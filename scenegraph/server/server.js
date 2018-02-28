const express = require('express');
const http = require('http');
const url = require('url');
const fs = require("fs");
const path = require("path");
const WebSocket = require('ws');

const glmatrix = require("gl-matrix");
const { mat4, quat, vec2, vec3, vec4 } = glmatrix;

console.log("----------------------------------------------------------------------")

// utility function to uniquely name variables
// (important for jitter objects that must be uniquely named)
let uid = (function() {
	let unique_id = 0;
	return function (prefix) {
		prefix = prefix || "var";
		return prefix + "_" + unique_id++;
	}
})();

/////////////////////////////////////////////////////////////

let patcher_state = {
	"objects" : {
		"osc1" : {
			"pos": [-0.4, 1.7, 0.0], 
			"orient": [0., 0., 0., 1.],
			"scale": 0.05,
			"tolocal": mat4.create(),
			"fromlocal": mat4.create(),
			"extent": 8,
			"op": "cycle",
			"args" : [ 100 ]
		},
		"osc2" : {
			"pos": [0.5, 1.7, 0.0],
			"orient": [0., 0., 0., 1.],
			"scale": 0.05,
			"tolocal": mat4.create(),
			"fromlocal": mat4.create(),
			"extent": 8,
			"op": "noise", 
			"args" : []
		},
		"out1" : {
			"pos": [0.0, 1.3, 0.0], 
			"orient": [0., 0., 0., 1.],
			"scale": 0.05,
			"tolocal": mat4.create(),
			"fromlocal": mat4.create(),
			"extent": 8,
			"op": "out",
			"args" : [ 1 ]
		}
	},
	"lines" : [ 		
		{
			"src" : "osc1",
			"srcidx" : 0,
			"dst" : "out1",
			"dstidx" : 0
		},
		{
			"src" : "osc2",
			"srcidx" : 0,
			"dst" : "out1",
			"dstidx" : 0
		}
	]
}

function patcher_init(patcher) {
	for (let name in patcher.objects) {
		let box = patcher.objects[name];
		patcher_box_update_mats(box);
	}
}

function patcher_box_update_mats(box) {
	// fromlocal converts points in the object-space of the box to the space of its' parent (e.g. the world)
	mat4.fromRotationTranslationScale(box.fromlocal, box.orient, box.pos, vec3.fromValues(box.scale, box.scale, box.scale));
	// tolocal does the opposite
	mat4.invert(box.tolocal, box.fromlocal);
}

function patcher_remove_object(name) {
	let obj = patcher_state.objects[name];
	if (obj) {
		delete patcher_state.objects[name];
		
		// notify all clients of this change
		patcher_update_all_clients();
	
	} else {
		console.log("warning, attempt to remove object "+name+" which did not exist");
	}
}

function patcher_update_object(name, args) {
	// TODO verify arguments
	
	// assert that 'name' exists
	let obj = patcher_state.objects[name];
	if (!obj) {
		throw new Error("attempt to update object "+name+" which did not exist");
	}
	
	// TODO: should this be a merge rather than a replace?
	// TODO: should this validate the fields (e.g. matching name)?
	obj.args = args;
	
	// notify all clients of this change
	patcher_update_all_clients();
}

function patcher_add_object(name, position) {
	// TODO verify arguments
	
	// assert that 'name' does not already exist
	if (patcher_state.objects[name]) {
		throw new Error("object "+name+" already exists");
	}
	
	patcher_state.objects[name] = {
		args: [
			"vr-box", 
			"@text", name,
			"@position", position[0], position[1], position[2], 
			"@name", name
		]
	}
	
	// notify all clients of this change
	patcher_update_all_clients();
}

function patcher_pick(name, x, y, z, qx, qy, qz, qw) {
	let patcher = patcher_state;
	
	let p = vec3.fromValues(x, y, z);
	let q = quat.fromValues(qx, qy, qz, qw);
	
	// get unit forward vector (-z) from the quaternion
	let uf = vec3.fromValues(0, 0, -1);
	vec3.transformQuat(uf, uf, q);
	
	// get an end-point from the -Z axis of the quat
	let p1 = vec3.clone(p);
	vec3.add(p1, p1, uf);
	
	// dimensions of box.obj
	const x0 = 0;
	const x1 = 8;
	const y0 = 0;
	const y1 = 1;
	const z0 = -0.1;
	const z1 = 0.1;
	
	let selected = "nothing";
	let pb = vec3.create();
	for (let name in patcher.objects) {
		const box = patcher.objects[name];
		
		vec3.transformMat4(pb, p, box.tolocal);
		
		//if (name == "out1") console.log(name, pb[0]);
		
		// bounding box collision test:
		if (pb[0] > x0 && pb[0] < x1	
		 && pb[1] > y0 && pb[1] < y1
		 && pb[2] > z0 && pb[2] < z1) {
			 selected = name;
			 break;
		 }
		
	}
	
	send_all_clients(JSON.stringify({
		msg:"selected", 
		args:{ hand: name, target: selected }
	}));
}

// convert current patcher to a stringified message packet:
function patcher_to_message() {
	return JSON.stringify({
		msg:"json", 
		args:patcher_state
	});
}

function patcher_update_all_clients() {
	send_all_clients(patcher_to_message());
}

patcher_init(patcher_state);

/////////////////////////////////////////////////////////////

// create an HTTP server
// using express to serve html files easily
const app = express();
//app.use(function (req, res) { res.send({ msg: "hello" }); });
app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});

const server = http.createServer(app);

// add a websocket service to the http server:
const wss = new WebSocket.Server({ server });

// send a (string) message to all connected clients:
function send_all_clients(msg) {
	wss.clients.forEach(function each(client) {
       client.send(msg);
    });
}

// whenever a client connects to this websocket:
wss.on('connection', function(ws, req) {
	
	console.log("server received a connection");
	console.log("server has "+wss.clients.size+" connected clients");
	
	const location = url.parse(req.url, true);
	// You might use location.query.access_token to authenticate or share sessions
	// or req.headers.cookie (see http://stackoverflow.com/a/16395220/151312)
	
	// send the current editor state as a JSON-wrapped message:
	// this gets used a few different places, worth wrapping into a function:
	function send_patcher() {
		ws.send(patcher_to_message());
	}

	// respond to any messages from the client:
	ws.on('message', function(message) {
		//console.log("message", message, typeof message);
		let text = "";
		if (message.type === 'utf8') {
			text = message.utf8Data;
		} else if (typeof message === "string") {
			text = message;
		} else {
			console.log("received message of type ("+message.type+"/"+typeof(message)+"), don't know what to do");
			return;
		}
		
		// was it a JSON message?
		if (text[0] == "{") {
			let packet = JSON.parse(text);
			//console.log("message: "+packet.msg);
					
			switch(packet.msg) {
				case "addobject": {
					patcher_add_object(packet.name, packet.position);
				}
				break;
				case "removeobject": {
					patcher_remove_object(packet.name);
				}
				break;
				case "updateobject": {
					patcher_update_object(packet.name, packet.args);
				}
				break;
				default: {
					console.log("unrecognized command"+packet.msg);
				}
			}
		} else {
			// assume a Max-like space delimited list
			let args = message.split(" ");
			let cmd = args.shift()
		
			switch(cmd) {
			case "loadpatcher":
				ws.send(patcher_to_message());
				break;
			case "pick":
				patcher_pick.apply(null, args);
				break;
			default:
				console.log("received message ("+text+"), don't know what to do", message);
			}
		}
	});
	
	ws.on('error', function (e) {
		if (e.message === "read ECONNRESET") {
			// ignore this, client will still emit close event
		} else {
			console.error("websocket error: ", e.message);
		}
	});

	// what to do if client disconnects?
	ws.on('close', function(connection) {
		console.log("client connection closed");

		// tell git-in-vr to push the atomic commits?
	});
	
	// reply with current patcher:
	ws.send(patcher_to_message());
	
});

server.listen(8080, function() {
  console.log('server listening on %d', server.address().port);
});

// report status:
process.on("exit", function(m) { console.log("server closing"); });
console.log("server running");
