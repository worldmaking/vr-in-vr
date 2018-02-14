const express = require('express');
const http = require('http');
const url = require('url');
const fs = require("fs");
const path = require("path");
const WebSocket = require('ws');

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
			"args" : [ 
				"vr-box", "@text", "cycle", 100, 
				"@position", 0.0, 1.7, 0.0, 
				"@name", "osc1" ]
		},
		"out1" : {
			"args" : [ 
				"vr-box", 
				"@text", "out", 1, 
				"@position", 0.0, 1.3, 0.0, 
				"@name", "out1" ]
		}
	},
	"lines" : [ 		
		{
			"src" : "osc1",
			"srcidx" : 0,
			"dst" : "out1",
			"dstidx" : 0
		}
	]
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
		console.log("message", message, typeof message);
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
			console.log("message: "+packet.msg);
					
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
		} 
		// was it a simple command?
		else if (text == "loadpatcher") {
			ws.send(patcher_to_message());
		} else {
			console.log("received message ("+text+"), don't know what to do", message);
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
