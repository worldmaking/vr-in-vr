

const path = require('path');
const fs = require('fs-extra'); 

var exec = require('child-process-promise').exec;
//var exec = require('child_process').exec;

const stringifyObject = require('stringify-object');


var str;

var util = require('util')
var child;
var child2;
var child3;
var child4;
var child5;
var child6; // child process for creating branches
var child7; //child process for switching branches
var child_hash;


console.log("Listening to Max on port 8080\n");

//get the path of the vr-in-vr repo (which differs from machine to machine)
//and make sure that the keyframe and atomic commits get stored in the ~/git-in-vr/ repo instead
var index_dir = __dirname
var dirname = index_dir.replace("vr-in-vr", "git-in-vr");
console.log("State saves will be made to " + dirname + "/projectname/")

/* auto pull/push at start of session. (Graham said to check out merging commits so that we can merge an entire session.)
exec("git pull", {cwd: dirname}, (error, stdout, stderr) => { 
	console.log(stdout);
	})
.then(function (result) {
        exec("git push", {cwd: dirname}, (error, stdout, stderr) => { 
        	console.log(stdout);

    });
    });
*/
const WebSocket = require('ws');
const ws = new WebSocket('ws://localhost:8080');

ws.on('open', function open() {
  //ws.send('something');
});

ws.on('message', function incoming(data) {
console.log("-------------");


//send a message "load maxpat <path-to-maxpat>" and this will parse it to json. eventually will get this to parse out what
//the vr editor needs to generate these objects and patchlines in the vr editor
if (data.includes("load maxpat")) {
	var utc = Date.now();
	var maxpat = (data.substring(12));

	//console.log(maxpat);

	var filename = path.basename(maxpat);
	//var name = (filename.substring(filename.lastIndexOf(".") + 1));
	var name = (filename.substring(filename.lastIndexOf("/")));
	var name2 = (filename.substring(0, filename.lastIndexOf(".")));

	const newdir = (dirname + '/states/' + name2);
		
		//get json from .maxpat
		exec('jsonlint --sort-keys ' + maxpat, (error, stdout, stderr) => {
			
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//parse the json so we can use it in vr-editor
				var state = JSON.parse(stdout);

			//var count = Object.keys(state.patcher.boxes).length;

				var max_class = [];
				var vr_ids = [];
				var objects = {};
				var patcher_positions = [];
				var numinlets = [];
				var objs = {};
				var parent_object = {};
				var vrboxes = [];
			
			for (const prop in state.patcher.boxes) {
				//console.log(prop);


				//get vr-box id
			//	console.log(state.patcher.boxes[prop].box);
				var id = (state.patcher.boxes[prop].box.id);
				var vr_id = ("vrbox_" + (id.split('-')[1]));

				//make vrbox varname based on this object.
				var var_name = {"varname":vr_id};

				//get patcher_position
				var patcher_position = (state.patcher.boxes[prop].box.patching_rect)
				//var p_pos = {"patcher_position":patcher_position};

				//get object text
				var obj_text = (state.patcher.boxes[prop].box.text)

				//get inlets
				var inlets = (state.patcher.boxes[prop].box.numinlets)
				//get outlets
				var outlets = (state.patcher.boxes[prop].box.numoutlets)
				
				/////////////
				//eventually take this code out, as its just a placeholder for dynamically created vr object positions
				var precision = 100; // 2 decimals

				var vr_x = Math.floor(Math.random() * (.1 * precision - 1 * precision) + 1 * precision) / (1*precision);
				var vr_y = Math.floor(Math.random() * (.1 * precision - 1 * precision) + 1 * precision) / (1*precision);
				var vr_z = Math.floor(Math.random() * (.1 * precision - 1 * precision) + 1 * precision) / (1*precision);
				

				//make vr position (ask graham how we would infer vr positional data from 2d-space... )

				/////////////

				//collect all object data and prepare to pass it over to the new_state.json below
				var obj = {
					[vr_id] : {
						"max_class" : "vr-box",
						"text" : obj_text,
						"var_name" : vr_id,
						"numinlets" : inlets,
						"numoutlets" : outlets,
						"vr_position" : [ vr_x, vr_y, vr_z ],
						"patcher_position" : patcher_position
								}
							}

				//vrbox = JSON.stringify(obj);

				//pass each vrbox over to new_state.objects below
				vrboxes.push(obj)

				}

				//collect the maxpat objects' data here and format as JSON
				var new_state = {}
				new_state.project_name = name;
				new_state['commit_hash'] = null;			
				new_state['UTC'] = utc;
				new_state['objects'] = vrboxes;
				state_json = JSON.stringify(new_state, null, 1);
//				console.log(state_json);

///////////////////////
	//create a directory for the vr representation of the maxpat file:
	//NOTE: if directory already exists (i.e. using a maxpat already used, it will assume its the same file 
	//and switch to that directory rather than create new. something to work out in the future.)
/*
				fs.ensureDir(newdir)
					if (fs.existsSync(newdir)) {
						  	console.log("WARNING: maxpat already exists in git-in-vr directory, so potentially overwriting");
						  	//then read the file. (find the cmd for that)
					  }
					else		{			
					//save VR state to a json in the git-in-vr repo 
					  fs.writeFileSync(newdir + "/state.json", state_json);
					//Also, make a keyframes folder where whole states will be saved along with UTC timestamp
					  fs.ensureDir(newdir + "/keyframes")
					  		.then(() => {
					//duplicate this as a keyframe (for now) in /keyframes/ <<Doing this because for now its 
					//easier to construct two different patchers in max from the two respective states, than it 
					//is to construct the same two patches from a diff generated by git. 
					  			fs.writeFileSync(newdir + "/keyframes/" + utc + "_key_" + "state.json", state_json);
					  			})
					//commits.json is where utc:commit-hashes will be added each time as key-value. 
					  
				//	  else 
						fs.writeFileSync(newdir + "/commits.json", "utc_hash:");
						console.log("NOTE: directory for " + name + " created at " + newdir);

					}

*/




fs.pathExists(newdir, (err, exists) => {

	if (exists == true) {
		console.log("WARNING: maxpat already exists in git-in-vr directory");

		//warn editor_scripting_node that this maxpat already has been used...
		ws.send("error: selected max patch filename already in use by vr-editor");

	}
	if (exists == false) {
		fs.ensureDir(newdir)
		fs.ensureDir(newdir + "/keyframes")

			console.log("NOTE: directory for " + name + " created at " + newdir)

			.then(() => {
				fs.writeFileSync(newdir + "/state.json", state_json);
				fs.writeFileSync(newdir + "/keyframes/" + utc + "_key_" + "state.json", state_json);



				})



	}
//	console.log(err)
//	console.log(exists)
})





	/*				
					.catch(err => {
				  	console.error(err)
				
		}) */

//git: add the newly saved state.json and keyframe
exec('git add .', {cwd: dirname})
    
	//after we add the new files, commit them
    .then(function (result) {
        child3 = exec("git commit -m \"" + commit_msg + "\"", {cwd: dirname});

    })
        
        .then(function (result) {
        child = exec("git log --pretty=format:'%h' -n 1", {cwd: dirname}, (error, stdout, stderr) => {
        	console.log("\nCommit hash: " + stdout + "\n");


        	//prep the new state to include the commit hash
        	var commit = JSON.parse(state_json);
        	commit.commit_hash = (stdout);
        	new_state2 = JSON.stringify(commit);
        	
        	//send the state over to max where it populates the [p scene] subpatcher 
			//with the vr-box (and eventually vr-line)
			ws.send(new_state2);
	        })
         })
        	.then(function (result) {
        		child4 = exec("git status", {cwd: dirname}, (error, stdout, stderr) => {
        			//console.log(stdout + "\n--------------------------------------------");
        		child5 = exec("git log --pretty=oneline > " + newdir + "/history.txt", {cwd: dirname}); 

        	})   
    });



	});

	}

//the following assumes that the state will always be sent with a project_name key (no value needed to process the message, btw). 
if (data.includes("project_name")) {

var utc = Date.now();

//get the json state from the maxpat 'editor_scripting_node'
var state = JSON.parse(data);
var projectname = (state.project_name);
console.log(projectname + " state changed");

///////////////////////////
//ensure git-in-vr repo is switched to projectname branch
/* So these commands work, but its not yet working as far as our workflow is concerned. need to chat with Graham about how
//this can work. 
exec('git branch ' + projectname, {cwd: dirname})
    .then(function (result) {
		console.log("branch created for new project: " + projectname);
		exec("git checkout " + projectname, {cwd: dirname});
    })
    .catch(function (err) {
        exec("git checkout " + projectname, {cwd: dirname});
    });
*/
///////////////////////////
//check if a directory exists for the vr projectname in the 'git-in-vr' repo ** NOTE for future: may not be 
// necessary if the git branching method works for storing projects (see code above)

const dir = (dirname + '/states/' + projectname);

fs.ensureDir(dir)
.then(() => {
//save VR state to a json in the git-in-vr repo 
  fs.writeFileSync(dir + "/state.json", data);
//Also, make a keyframes folder where whole states will be saved along with UTC timestamp
  fs.ensureDir(dir + "/keyframes")
  		.then(() => {
//duplicate this as a keyframe (for now) in /keyframes/ <<Doing this because for now its 
//easier to construct two different patchers in max from the two respective states, than it 
//is to construct the same two patches from a diff generated by git. 
  			fs.writeFileSync(dir + "/keyframes/" + utc + "_key_" + "state.json", data);
  			})
//commits.json is where utc:commit-hashes will be added each time as key-value. 
  if (fs.existsSync(dir + "/commits.json")) {
  	console.log("test");
  	//then read the file. (find the cmd for that)
  }
  else 
	fs.writeFileSync(dir + "/commits.json", "utc_hash:");
	
})
.catch(err => {
  console.error(err)
})

////////////////////////////
var commit_msg = ("atomic commit " + utc);


//git: add the newly saved state.json and keyframe (if there is one)
exec('git add .', {cwd: dirname})
    
	//after we add the new files, commit them
    .then(function (result) {
        child3 = exec("git commit -m \"" + commit_msg + "\"", {cwd: dirname});

    })
        
        .then(function (result) {
        child = exec("git log --pretty=format:'%h' -n 1", {cwd: dirname}, (error, stdout, stderr) => {
        	console.log("\nCommit hash: " + stdout + "\n");


        	//prep the new state to include the commit hash
        	var hash = (stdout);
        	state.commit_hash = (hash);
        	new_state = JSON.stringify(state);
        	
        	//send the state over to max where it populates the [p scene] subpatcher 
			//with the vr-box (and eventually vr-line)
			ws.send(new_state);
	        })
         })
        	.then(function (result) {
        		child4 = exec("git status", {cwd: dirname}, (error, stdout, stderr) => {
        			console.log(stdout + "\n--------------------------------------------");
        		child5 = exec("git log --pretty=oneline > " + dir + "/history.txt", {cwd: dirname}); 

        	})   
    });


}
 });


//// TODO: add something that auto-pushes git-in-vr to remote when this script closes?

