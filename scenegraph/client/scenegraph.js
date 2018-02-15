

///////////

// get/create a global object for sharing data between reloads: 
var scene_patcher_shared_data = new Global("shared_data");
// initialize a unique_id field if necessary:
if (!scene_patcher_shared_data.unique_id) {
	scene_patcher_shared_data.unique_id = 0;
}
// utility function to uniquely name variables
// (important for jitter objects that must be uniquely named)
function uid(prefix) {
	prefix = prefix || "var";
	return prefix + "_" + scene_patcher_shared_data.unique_id++;
}

var scene_box;
var scene_patcher;
// next location for a patcher object:
var scene_patcher_nextobject_y = 10;

function scene_box_find() {
	if (scene_box) return;
	
	scene_box = this.patcher.getnamed("scene");
	if (scene_box && scene_box.subpatcher()) {
		scene_patcher = scene_box.subpatcher();
	
		
	} else {
		// TODO: create the scene box & get subpatcher
	
		error("need to create a scene subpatcher\n");
	}
	
	
}

function gen_test() {
	
	gen_box = this.patcher.getnamed("gen");
	if (gen_box && gen_box.subpatcher()) {
		gen_patcher = gen_box.subpatcher();
		
	
		gen_patcher.apply(function(b) {
			//post(" " + b.patcher.name + " " + b.maxclass + " " + b.varname + " " + b.rect + "\n");
			gen_patcher.remove(b);
		});
	
		var noise_box = gen_patcher.newdefault.apply(gen_patcher, [20, 20, "noise"]);
		var out1_box = gen_patcher.newdefault.apply(gen_patcher, [20, 120, "out", 1]);
		
		gen_patcher.connect(
			noise_box,
			0,
			out1_box,
			0
		);
		
		post("gen_patcher scripted!\n");
	
	}
}

// empty out all objects from the [p scene] patcher
function scene_patcher_clean() {
	scene_patcher.apply(function(b) {
		//post(" " + b.patcher.name + " " + b.maxclass + " " + b.varname + " " + b.rect + "\n");
		scene_patcher.remove(b);
	});
}

function scene_patcher_add_object(name, args) {
	if (!name) name = uid("box");
	
	/*
	if (findobject(name)) {
		error(name + " name already in use\n");
		return;
	}
	*/
	
	// generate the arguments for patcher.newdefault
	// as an array containing x, y, text:
	var args = ([20, scene_patcher_nextobject_y]).concat(args) ;
	scene_patcher_nextobject_y += 30;
	
	// call patcher.newdefault to create a new max object
	// (using apply() so we can pass arguments as an array):
	var new_box = scene_patcher.newdefault.apply(scene_patcher, args);
	// set the "scripting name" of the max object
	// (useful if we want to address it directly later)
	new_box.varname = name;
	// TODO store in lookup table if needed
	
	// TODO: only do this if the object is a vr-box:
	
	// find the embedded body, rename it, and hook it up:
	var box_patcher = new_box.subpatcher();
	box_patcher.apply(function(e) {
		if (e.maxclass == "jit.phys.body") {
			e.varname = name;// + "_body";
			//objects_add(e.varname, e);
			//scene_bodies[e.varname] = box_name;
			body = e;
		}
	});
	
	return new_box;
}

function scene_patcher_from_data(scene_data) {
	for (var name in scene_data.objects) {
		var obj = scene_data.objects[name];
		scene_patcher_add_object(name, obj.args);
	}
	
	for (var i in scene_data.lines) {
		var line = scene_data.lines[i];
		scene_patcher.connect(
			scene_patcher.getnamed(line.src),
			line.srcidx,
			scene_patcher.getnamed(line.dst),
			line.dstidx
		);
	}
}



// if we receive a dictionary, convert to JSON and continue:
function dictionary(name) {
	return json((new Dict(name)).stringify());
}

// if we receive JSON, parse it and create the patcher:
function json(data) {

	

	var data = JSON.parse(data);
	
	// clear it up:
	scene_patcher_clean();
	
	// now fill it:
	scene_patcher_from_data(data);
}

function fromserver(str) {
	var obj = JSON.parse(str);
	post("fromserver", obj.msg, obj.args);
	if (obj.msg == "json") {
		// clear it up:
		scene_patcher_clean();
		
		// now fill it:
		scene_patcher_from_data(obj.args);
	}
}

function bang() {

	// find the [p scene] & get the subpatcher
	scene_box_find();
	
	// open it
	//scene_patcher.front();
	
	// clear it up:
	scene_patcher_clean();
	
	// now fill it:
	dictionary("scene_data");
	 
	post("ok");
}

function addobject(name, x, y, z) {
	
	var packet = {
		msg: "addobject",
		name: name,
		position: [x, y, z]
	};
	
	outlet(0, JSON.stringify(packet));
}

scene_box_find();