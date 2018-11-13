
const http = require('http');
const url = require('url');
const fs = require("fs");
const path = require("path");

const WebSocket = require('ws');
const express = require('express')
const app = express()
const port = 3000


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
            // echo back:
            send_all_clients(text);
            console.log("echo sent");
		} else {
			console.log("received message of type ("+message.type+"/"+typeof(message)+"), don't know what to do");
			return;
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
	
});

server.listen(8080, function() {
  console.log('server listening on %d', server.address().port);
});

// report status:
process.on("exit", function(m) { console.log("server closing"); });
console.log("server running");
