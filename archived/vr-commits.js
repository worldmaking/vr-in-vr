  var YAML = require("json2yaml")
var json2yaml = require("json2yaml")

// enter this in the CLI: "node vr-git.js 0f6fed29195fd0c4fdd9168165d7c20763949fd9 vr-git_log.maxpat" + Enter
//script arguments for the CLI
 var cli_args = process.argv.slice(2); // slice the first 2 args (first 2 are always 'node' and 'this file')
// the CLI arguments should be diff1 and diff2!
	var diff1 = cli_args[0];
	var diff2 = cli_args[1];

//attempt to compress git diff before sending out ws:
//var jsscompress = require("js-string-compression");


//make websocket client
var WebSocket = require('ws', 'websocket')
var connection = new WebSocket('ws://localhost:8080'); //connect to max

// http://nodejs.org/api.html#_child_processes
var util = require('util')
var exec = require('child_process').exec;
var child;
var child2;
var child3;

// DON'T DELETE THIS BELOW, IT WORKS AS A CLI CMD
connection.onopen = function () {

// executes the git diff command on just one file (this way we don't end up comparing ALL files in the entire vr-in-vr directory)
		//child = exec("git diff " + diff1 + " " + diff2, function (error, stdout, stderr) {
		//git_log = JSON.stringify(stdout);
		//connection.send(git_log);

		//	JSON.stringify()
 		console.log('listening to max');
		// probably don't need this:  console.log('stderr: ' + stderr);
		//  if (error !== null) {
	    //console.log('exec error: ' + error);
  	//}
};

// git diff [from-commit] [to-commit]

connection.onmessage = function (a) {
	//ideally from max you specify the command to this script.

	if (a.data.includes("atomic")) {

		//child2 = exec("git add .", function (stdout) {console.log(stdout)});

		child = exec(a.data, function (error, stdout, stderr) {
		
	 	//git_log2 = JSON.stringify(compressed);
	 	//connection.send(stdout);
	 	console.log(stdout);

	 	// I want to include a bit of code that also takes the patcher as a dictionary 
	 	// in from the ws:8080, but since it is the same file, it will include the
	 	// message box that is being filtered out using the 'if' statement above. 
	 		// for now i'll just use another patch with its own websocket...
	 
















	 });

	 }
	 //if you typed some other git commands, then:
	else {
		child2 = exec(a.data, function (error, stdout, stderr) {
	 	//git_log2 = JSON.stringify(stdout);
	 	jason = JSON.stringify(stdout);
	 	yamie = YAML.stringify(jason);

	 	connection.send(yamie);
	 	console.log(yamie);
	 });

	 }
};
