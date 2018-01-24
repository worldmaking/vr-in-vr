
// http://nodejs.org/api.html#_child_processes
var util = require('util')
var exec = require('child_process').exec;
var child;
// executes `pwd`
child = exec("git log -1 --pretty=format: %n{%n  "commit": "%H",%n  "author":     "%an",%n  "author_email": "%ae",%n  "date": "%ad",%n  "message": "%f"%n}'", function (error, stdout, stderr) {
//	JSON.stringify()
  console.log(stdout);
// probably don't need this:  console.log('stderr: ' + stderr);
  if (error !== null) {
    console.log('exec error: ' + error);
  }
});

