var WebSocketServer = require('websocket').server;
var http = require('http');

var server = http.createServer(function(request, response) {
	//console.log("received http");
	// TODO:
	// there's lots of scope here to add a HTML interface to the editor...
});
server.listen(8080, function() {});

ws_server = new WebSocketServer({
	httpServer: server
});

var patcher_state = {
	"objects" : 	{
		"sausage" : 		{
			"args" : [ "vr-box", "@text", "sausage", "@position", 0.0, 1.7, 0.0, "@name", "sausage" ]
		}
,
		"haggis" : 		{
			"args" : [ "vr-box", "@text", "haggis", "@position", 0.0, 1.3, 0.0, "@name", "haggis" ]
		}

	}
,
	"lines" : [ 		{
			"src" : "apple",
			"srcidx" : 0,
			"dst" : "orange",
			"dstidx" : 0
		}
 ]
}

unique_id = 0;

// utility function to uniquely name variables
// (important for jitter objects that must be uniquely named)
function uid(prefix) {
	prefix = prefix || "var";
	return prefix + "_" + unique_id++;
}

// whenever a client connects to this websocket:
ws_server.on('request', function(request) {
	let connection = request.accept(null, request.origin);
	console.log("server received a connection");
	
	// send the current editor state as a JSON-wrapped message:
	// this gets used a few different places, worth wrapping into a function:
	function send_patcher() {
		connection.sendUTF(JSON.stringify({msg:"json", args:patcher_state}));
	}

	// respond to any messages from the client:
	connection.on('message', function(message) {
		if (message.type === 'utf8') {
			var text = message.utf8Data;
			console.log("received utf8 message", text);
			
			// was it a JSON message?
			if (text[0] == "{") {
				var packet = JSON.parse(text);
				if (packet.msg == "addobject") {
					console.log("message: addobject");
					
					var name = packet.name;
					patcher_state.objects[name] = {
						args: [
							"vr-box", 
							"@text", name,
							"@position", packet.position[0], packet.position[1], packet.position[2], 
							"@name", name
						]
					}
					send_patcher();
				}
				
				
			} 
			// was it a simple command?
			else if (text == "loadpatcher") {
				send_patcher();
			}
			
		} else {
			console.log("received non-utf8 message, don't know what to do");
		}
	});

	// what to do if client disconnects?
	connection.on('close', function(connection) {
		console.log("server connection closed");

		// tell git-in-vr to push the atomic commits?
	});
	
	// reply with current patcher:
	send_patcher();
	
});

process.on("exit", function(m) {
	console.log("server closing");
});
console.log("server running");