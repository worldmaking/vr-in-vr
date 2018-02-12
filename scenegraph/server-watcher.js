
const child_process = require("child_process");

let proc;

function run() {
	let invoked = false;
	let cmd = "server.js";
	let args = [];
	proc = child_process.fork(cmd, args);
	proc.on("error", function(err) {
		if (invoked) return;
		invoked = true;
		console.log(cmd + " error " + err);
	});
	
	proc.on("exit", function(code) {
		if (invoked) return;
		invoked = true;
		console.log(cmd + " exited with code " + code);
		proc = null;
	});
	
	// proc.send(...) // send messages to proc
	// proc.on("message") // receive messages from proc
	
	// proc.exit
	
	setTimeout(function() {
		if (proc) { 
			//proc.kill();
			proc.send("close");
		}
		
		setTimeout(function() {
			
			run();
		}, 2000);
		
	}, 2000);
}

run();
console.log("watching server.js");
