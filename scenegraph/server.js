var WebSocketServer = require('websocket').server;
var http = require('http');

var server = http.createServer(function(request, response) {
	console.log("received http");
});
server.listen(8080, function() {});

wsServer = new WebSocketServer({
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

function send_patcher(connection) {
	connection.sendUTF(JSON.stringify({msg:"json", args:patcher_state}));
}

wsServer.on('request', function(request) {
	var connection = request.accept(null, request.origin);
	console.log("received connection");
	
	connection.on('message', function(message) {
		if (message.type === 'utf8') {
			var text = message.utf8Data;
			console.log("received utf8 message", text);
			
			if (text[0] == "{") {
				
				var packet = JSON.parse(text);
				if (packet.msg == "addobject") {
					console.log("addobject");
					
					var name = packet.name;
					patcher_state.objects[name] = {
						args: [
							"vr-box", 
							"@text", name,
							"@position", packet.position[0], packet.position[1], packet.position[2], 
							"@name", name
						]
					}
					send_patcher(connection);
				}
				
			} else if (text == "loadpatcher") {
				send_patcher(connection);
			}
			
			
		} else {
			console.log("received non-utf8 message, don't know what to do");
		}
		
		
	});

	connection.on('close', function(connection) {
		// close user connection
		console.log("closed");

		// tell git-in-vr to push the atomic commits?
	});
	
	// reply with current patcher:
	send_patcher(connection);
	
});

process.on("message", function(m) {
	if (m === "close") {
		if (server) {
	console.log("received", m);
			server.close();
			throw new Error("bye");
		}
	}
});

process.on("exit", function(m) {
	console.log("server closing");
});

console.log("server running");