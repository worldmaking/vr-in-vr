// enter this in the CLI: "node vr-git.js 0f6fed29195fd0c4fdd9168165d7c20763949fd9 vr-git_log.maxpat" + Enter
//script arguments for the CLI
 var cli_args = process.argv.slice(2); // slice the first 2 args (first 2 are always 'node' and 'this file')
// the CLI arguments should be diff1 and diff2!
	var diff1 = cli_args[0];
	var diff2= cli_args[1];

//make websocket client
var WebSocket = require('ws', 'websocket')
var connection = new WebSocket('ws://localhost:8080'); //connect to max

// http://nodejs.org/api.html#_child_processes
var util = require('util')
var exec = require('child_process').exec;
var child;

connection.onopen = function () {

// executes the git diff command on just one file (this way we don't end up comparing ALL files in the entire vr-in-vr directory)
		child = exec("git diff " + diff1 + " " + diff2, function (error, stdout, stderr) {
		git_log = JSON.stringify(stdout);
		connection.send(git_log);

		//	JSON.stringify()
 		console.log('sending to max', diff1, diff2);
		// probably don't need this:  console.log('stderr: ' + stderr);
		  if (error !== null) {
	    console.log('exec error: ' + error);
  	}
});

};




