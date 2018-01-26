const path = require('path');
const fs = require('fs-extra'); 

var str;

var util = require('util')
var exec = require('child_process').exec;
var child;
var child2;
var child3;

console.log("Listening to Max on port 8080\n");

//get the path of the vr-in-vr repo (which differs from machine to machine)
//and make sure that the keyframe and atomic commits get stored in the ~/git-in-vr/ repo instead
var index_dir = __dirname
var dirname = index_dir.replace("vr-in-vr", "git-in-vr");
console.log("State saves will be made to " + dirname)


const WebSocket = require('ws');
const ws = new WebSocket('ws://localhost:8080');

ws.on('open', function open() {
  //ws.send('something');
});

ws.on('message', function incoming(data) {
  //console.log(data);

var state = JSON.parse(data);
var projectname = (state.project_name);

console.log(projectname + " state changed");

//check if a directory exists for patcher in the commit frames, if not, make one. 
const dir = (dirname + '/states/' + projectname);

async function example (directory) {
  try {
    await fs.ensureDir(directory)
    //console.log('success!')
  } catch (err) {
    console.error(err)
  }
}
example(dir)

//
console.log(dir);

fs.writeFileSync(dir + "_state.json", data);
child = exec("cd " + dirname);
child2 = exec("git add .");
child3 = exec("git commit -m \"atomic commit\"");




  ws.send(data);
});

/*
var http = require('http');

http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Hello World!');
}).listen(8088);
*/




