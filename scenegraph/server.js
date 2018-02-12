
const child_process = require("child_process");
const fs = require("fs");

/*
	The server code itself is in server-main.js
	
	This file runs server-main.js as a sub-process,
	so that it can capture errors safely
	and also detect edits to the server-main.js file
	and close & relaunch the server automatically 
*/

let cmd = "server-main.js";
let proc;  // reference to the child process that is running 'cmd'

// watch for change events to the 'cmd' file,
// which should trigger the process to exit (and thus relaunch):
fs.watch(cmd, (e, name) => {
	console.log(name + " file triggered event " + e + ", exiting");
	if (proc) proc.kill();
});
console.log("watching server.js");

// start the node.js process 'cmd'
function run() {
	let args = [];
	proc = child_process.fork(cmd, args);
	
	proc.on("error", function(err) {
		console.log(cmd + " error " + err);
		// also trigger relaunch?
		if (proc) proc.kill();
	});
	
	// if the process exits, make it relaunch:
	proc.on("exit", function(code) {
		// prevent double-launch
		if (!proc) return; 
		proc = null;
		
		console.log(cmd + " exited with code " + code);
		console.log(cmd + " will relaunch shortly");
		setTimeout(run, 1000);
	});
	
	// proc.send(...) // send messages to proc
	// proc.on("message") // receive messages from proc
}

// start it up:
run();
