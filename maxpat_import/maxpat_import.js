var path = require('path');
var exec = require('child-process-promise').exec;

 

//wtf i can't figure this out!!!!


function maxpat_json() { 

	module.exports = exec('jsonlint --sort-keys ' + "/Users/mp/vr-in-vr/maxpat-parse/patch_1.maxpat", (error, stdout, stderr) => {
		var test = JSON.stringify(stdout);
})
}

//			return {stdout};
//})

/*

function (maxpat_path) {

const { PI } = Math;

exports.area = (r) => PI * r ** 2;

//exports.circumference = (r) => 2 * PI * r;


var circumference;

//this file should either remain in the /maxpat_import folder, or slice_dir may need to be adjusted

var maxpat_import;

var path = require('path');
var exec = require('child-process-promise').exec;

var exports = module.exports = {};

var maxpat_path = "/Users/mp/vr-in-vr/maxpat-parse/patch_1.maxpat";

//  function import_patcher(maxpat_path) {


var dir = __dirname
var slice_dir = (dir.substring(0,dir.lastIndexOf("/maxpat_import")));
var dirname = slice_dir.replace("vr-in-vr", "git-in-vr");

//console.log(maxpat_path + "   " + git_in_vr_path);

    var filename = path.basename(maxpat_path);
	//var name = (filename.substring(filename.lastIndexOf(".") + 1));
	var name = (filename.substring(filename.lastIndexOf("/")));
	var name2 = (filename.substring(0, filename.lastIndexOf(".")));


	const newdir = (dirname + '/states/' + name2);


console.log("\n" + name2);
//console.log("\n" + newdir);
console.log("State saves will be made to " + dirname + "/projectname/")




//get json from .maxpat
//		exec('jsonlint --sort-keys ' + maxpat_path, (error, stdout, stderr) => {
//			return {stdout};
//})



module.exports = name2;

}
/*

var utc = Date.now();

var commit_msg = ("atomic commit " + utc);

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


//module.exports = {state_json};

	exports.test = function() {
		return state_json;
	};

    });
}

//export default maxpat_import(state_json);

/*var maxpat = (data.substring(12));

	console.log(data);

	var filename = path.basename(maxpat);
	//var name = (filename.substring(filename.lastIndexOf(".") + 1));
	var name = (filename.substring(filename.lastIndexOf("/")));
	var name2 = (filename.substring(0, filename.lastIndexOf(".")));


	const newdir = (dirname + '/states/' + name2);
		
		//get json from .maxpat
		exec('jsonlint --sort-keys ' + maxpat, (error, stdout, stderr) => {

			console.log(stdout);
			
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


///////////////////////

//check to see if a folder matching this .maxpat's name already exists in the git-in-vr states directory

fs.pathExists(newdir, (err, exists) => {

	//if it does, then ignore this .maxpat, and inform the user. Future: maybe have a prompt here that lets them decide
	//to overide this? 
	if (exists == true) {
		console.log("\n\nWARNING: maxpat already exists in git-in-vr directory, not instantiating. \nTry another .maxpat, or rename the maxpat, or (last resort) remove the folder named: \n\n" + newdir)
	
		//warn editor_scripting_node that this maxpat already has been used...
		ws.send("error: selected max patch filename already in use by vr-editor");

		}




		//if it doesn't exist yet, make a folder for it in ~/states, populate that with the JSON state data, and do a keyframe commit. 

		else if (exists == false) {
				
		fs.ensureDirSync(newdir)
		fs.ensureDirSync(newdir + "/keyframes")
		fs.writeFileSync(newdir + "/state.json", state_json);
		fs.writeFileSync(newdir + "/keyframes/" + utc + "_key_" + "state.json", state_json);
		console.log("NOTE: directory for " + name + " created at " + newdir)

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
	        			
	        			var git_status = (stdout.slice(60, 64));
	        			//var gitstatus = (git_status.substring(0, git_status.lastIndexOf("_")));


	        			console.log(git_status + " atomic commits collected this session.");
	        			child5 = exec("git log --pretty=oneline > " + newdir + "/history.txt", {cwd: dirname}); 

			        	})   
			    });

			}
				});





	});

	}

	*/