

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

//send a message "load maxpat <path-to-maxpat>" and this will parse it to json. eventually will get this to parse out what
//the vr editor needs to generate these objects and patchlines in the vr editor
if (data.includes("load maxpat")) {
	var utc = Date.now();

	var maxpat = (data.substring(12));

	var filename = path.basename(maxpat);
	var name = (filename.substring(filename.lastIndexOf(".") + 1));

	const newdir = (dirname + '/states/' + name);
//	console.log("parsed max patcher " + filename);
		
		//get json from .maxpat
		exec('jsonlint --sort-keys ' + maxpat, (error, stdout, stderr) => {
			
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//parse the json so we can use it in vr-editor
				var state = JSON.parse(stdout);

			//var count = Object.keys(state.patcher.boxes).length;
			//console.log(count);
				console.log("--------");

				var max_class = [];
				var vr_ids = [];
				var objects = {};
				var patcher_positions = [];
				var numinlets = [];
				var objs = {};
				var parent_object = {};
				var vrboxes = {};
			for (const prop in state.patcher.boxes) {
				//console.log(prop);


				vr_id = {}
				//get vr-box id
			//	console.log(state.patcher.boxes[prop].box);
				var id = (state.patcher.boxes[prop].box.id);
				var vr_id = ("vrbox_" + (id.split('-')[1]));

				//make vrbox varname based on this object.
				var var_name = {"varname":vr_id};

				//get patcher_position
				var patcher_position = (state.patcher.boxes[prop].box.patching_rect)
				//var p_pos = {"patcher_position":patcher_position};


				//get inlets
				var inlets = (state.patcher.boxes[prop].box.numinlets)
				//get outlets
				var outlets = (state.patcher.boxes[prop].box.numoutlets)
				


				var obj = {
					[vr_id] : {
						"max_class" : "vr-box",
						"text" : vr_id,
						"var_name" : vr_id,
						"vr_position" : [ 0.9047, 0.2227, 0.8258 ],
						"patcher_position" : [ 20, 0 ]
								}
							}


				const vrbox = stringifyObject(obj, {
					    indent: '  ',
					    singleQuotes: false
						});
 
				console.log(vrbox);


//				var myJSON = JSON.stringify(obj);
//				vrbox.patcher_position = patcher_position;

				//JSON.stringify(vr_id);
//				console.log(myJSON);				


				}

				//new code attempt at formatting this all as json:
				var new_state = {}
				new_state.project_name = name;
				new_state.commit_hash = null;
				new_state.UTC = utc;
				new_state.objects = vrboxes;
				//new_state.objects = ("vrbox_" + (id.split('-')[1]));
				//new_state['patcher_position'] = [patcher_positions];


			//	new_state['objects'] = objects;
				JSON.stringify(new_state);
				console.log(new_state);


				//old attempt, not quite there yet!
/*				vr_ids.push(vr_id);

				
				//make vrbox varname based on this object?
				var var_name = vr_id;

				//get patcher_position
				var patcher_position = (state.patcher.boxes[prop].box.patching_rect)
				patcher_positions.push(patcher_position);

				//get inlets
				var inlets = (state.patcher.boxes[prop].box.numinlets)
				//get outlets
				var outlets = (state.patcher.boxes[prop].box.numoutlets)

				var precision = 100; // 2 decimals

				var x = Math.floor(Math.random() * (.1 * precision - 1 * precision) + 1 * precision) / (1*precision);
				var y = Math.floor(Math.random() * (.1 * precision - 1 * precision) + 1 * precision) / (1*precision);
				var z = Math.floor(Math.random() * (.1 * precision - 1 * precision) + 1 * precision) / (1*precision);
				

				//make vr position (ask graham how we would infer vr positional data from 2d-space... )
				var vr_position = [x, y, z];

			//make the vrbox_nn JSON object
				var object = {}
				object[vr_id] = {var_name, inlets, outlets, vr_position, patcher_position};
				objs = JSON.stringify(object);
				console.log(objs);

				var new_state = {}
				new_state['project_name'] = name;
				new_state.objects = {objs};
				//new_state['patcher_position'] = [patcher_positions];


			//	new_state['objects'] = objects;
				JSON.stringify(new_state);
				console.log(new_state);

				//push this to the main new json NOT WORKING YET!!
		*/		//parent_object.push(objs);
			//	}

/*
				var new_state = {}
				new_state['project_name'] = name;
				new_state.objects = {parent_object};
				new_state['patcher_position'] = [patcher_positions];


			//	new_state['objects'] = objects;
				JSON.stringify(new_state);
//				console.log(new_state);
*/


		fs.ensureDir(newdir)
			.then(() => {
			//save VR state to a json in the git-in-vr repo 
			  fs.writeFileSync(newdir + "/state.json", stdout);
			//Also, make a keyframes folder where whole states will be saved along with UTC timestamp
			  fs.ensureDir(newdir + "/keyframes")
			  		.then(() => {
			//duplicate this as a keyframe (for now) in /keyframes/ <<Doing this because for now its 
			//easier to construct two different patchers in max from the two respective states, than it 
			//is to construct the same two patches from a diff generated by git. 
			  			fs.writeFileSync(newdir + "/keyframes/" + utc + "_key_" + "state.json", stdout);
			  			})
			//commits.json is where utc:commit-hashes will be added each time as key-value. 
			  if (fs.existsSync(newdir + "/commits.json")) {
//			  	console.log("warning: file already exists in git-in-vr directory");
			  	//then read the file. (find the cmd for that)
			  }
			  else 
				fs.writeFileSync(newdir + "/commits.json", "utc_hash:");
			
			})
			.catch(err => {
		  	console.error(err)
		
		})

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

