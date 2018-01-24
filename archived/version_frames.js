var watch = require('node-watch');
const path = require('path');
const Max = require('max-api');
const fs = require('fs-extra'); 
//const utc = require('unix-timestamp');

var util = require('util')
var exec = require('child_process').exec;
var child;
var child2;

var cli_args = process.argv; // get the args
// the node.script is receiving 'script start nn.maxpat', so we want the third argument:
  var patchname = cli_args[2];
  var patchpath = cli_args[3];
//console.log(patchname);
//
//


//check if a directory exists for patcher in the commit frames, if not, make one. 
const dir = (__dirname + '/version_frames/' + patchname)

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
//NOTE: the commit_frames folder is in the .gitignore (possibly only for now...), as 
// I didn't see the need to have git track atomic and key frames too. 


//var count = 0; //this is the total number of .html files already in the folder. 

//** MAKE KEY FRAMES **
watch(patchname + ".maxpat", { recursive: true }, function(evt, name) {
  //console.log('%s changed.', name);
var source = (__dirname + "/" + patchname + ".maxpat");
var utc = Date.now();
var dest = (__dirname + "/version_frames/" + patchname + "/" + utc + "_key_" + patchname + ".maxpat")

child = exec("cp " + source + " " + dest);
});


//**MAKE KEY FRAMES OF state.json**
watch("state.json", { recursive: true }, function(evt, name) {

//console.log('%s changed' name)

var source = (__dirname + "/state.json");
var utc = Date.now();
var dest = (__dirname + "/version_frames/" + patchname + "/" + utc + "_key_" + "state.json")

child2 = exec("cp " + source + " " + dest);
})


//** MAKE ATOMIC FRAMES **
//NOTE: This works! But, its meaningless unless you're SAVING the file first, but that would then 
//result in a KEYFRAME being made as well. So, I'm awaiting help from the max community to 
//find out if there's something that can report a statechange in a maxpatcher.
/*
Max.addHandler("newframe", () => {

var source = (__dirname + "/" + patchname + ".maxpat");
var utc = Date.now();
var dest = (__dirname + "/version_frames/" + patchname + "/" + utc + "_atomic_" + patchname + ".maxpat")

child = exec("cp " + source + " " + dest);

   });
*/
