
// the state of the patcher being worked on
// this is the 'ground truth' from which all views are derived
var state = {
	objects: {},
	lines: []
};
/*
// this is an example of what a real state could look like:
state = {
	objects: {
		"obj-1": {
			id: "obj-1",
			// maxclass: "newobj",
			text: ["loadmess", "1"],
			numinlets: 0,
			numoutlets: 1,
			patcher_location: [15,15],
			
			world_location: [0, 1.4, -1],
			world_quat: [0, 0, 0, 1],
			// etc.
		},
		"obj-2": {
			id: "obj-2",
			// maxclass: "newobj",
			text: ["print", "test"],
			numinlets: 0,
			numoutlets: 1,
			patcher_location: [15,45],
			
			world_location: [0, 1, -1],
			world_quat: [0, 0, 0, 1],
			// etc.
		},
	},
	lines: [
		{
			src: "obj-1",
			dst: "obj-2",
			outlet: 0,
			inlet: 0,
		},
	],
};
save_state();
*/


// will refer to the patcher being created:
var patcher;

// lookup table from object names to objects:
var patcher_objects = {};
function findobject(name) {
	// this might get more complicated later
	return patcher_objects[name];
}

// a way to generate new object names:
unique_id = 1;
function generate_unique_id() {
	// unique means it doesn't already exist in patcher_objects
	var id = "obj-" + (unique_id++);
	while (patcher_objects[id]) {
		id = "obj-" + (unique_id++);
	}
	return id;
}

// load a patcher from a JSON representation of its state:
function load_state() {
	// create new patcher
	patcher = new Patcher(20, 20, 500, 500);
	// show it:
	patcher.front();

	// read the file from disk:
	var f = new File("state.json", "read");
	var json_state = f.readstring(json_state, f.eof);
	f.close();
	// convert the JSON text to a javascript object:
	state = JSON.parse(json_state);
	// populate the patcher:
	populate_patcher();
}

// TODO factor out the new object/new line stuff
// so that they can also be used by newobject(), connectobjects(), etc.
function populate_patcher() {
	// for each object
	var keys = Object.keys(state.objects);
	for (var i=0; i<keys.length; i++) {
		var obj_state = state.objects[keys[i]];
		createobject(obj_state.id, obj_state);
	}
	
	// for each line
	for (var i=0; i<state.lines.length; i++) {
		var line = state.lines[i];
		connectobjects(line.src, line.outlet, line.dst, line.inlet);
	}
	
	// trigger loadbangs etc.
	
	
}


// save the current state back to a JSON file:
function save_state() {
	var json_state = JSON.stringify(state, null, 2);
	var f = new File("state.json", "write");
	f.writestring(json_state);
	f.close();
}

// if we ever wanted to save the generated patcher
// patcher.write();

// called when this js file is closed
function close() {
	post("closing\n");
	// save current patcher to JSON:
	save_state();
	// close the generated patcher:
	patcher.wclose(); // or .dispose()?
}

function moveobject(name, position, quat) {
	var obj_state = state.objects[name];
	// TODO
	// move would update world_position and world_quat
	obj_state.world_position = position;
	obj_state.world_quat = quat;
}

function deleteobject(name) {
	var obj = findobject(name);
	if (obj) {
		// TODO: delete 3D representation
		// (including all connected 3D patchlines!)
		
		// delete patcher representation
		// (will automatically remove lines)
		patcher.remove(obj);
		
		// remove from state:
		delete state.objects[name];
	}
}

function newobject() {
	var id = generate_unique_id();
	post(id, "\n");
	
	var obj_state = {
		// TODO: fill in properties with given 
		// or default data
	};
	
	createobject(id, obj_state);
}

function createobject(name, obj_state) {
	if (findobject(name)) {
		error(name + " name already in use\n");
		return;
	}
	
	// TODO validate all properties:
	obj_state.id = name;
	
	
	// insert:
	state.objects[name] = obj_state;
	
	// generate the arguments for patcher.newdefault
	// as an array containing x, y, text:
	var args = obj_state.patcher_location.concat(obj_state.text);
	//post(args, "\n");
	// call patcher.newdefault to create a new max object
	// (using apply() so we can pass arguments as an array):
	var obj_patcher = patcher.newdefault.apply(patcher, args);
	// set the "scripting name" of the max object
	// (useful if we want to address it directly later)
	obj_patcher.varname = name;
	// store in lookup table:
	patcher_objects[name] = obj_patcher;
	
	// TODO: create 3D version
	// outlet(0, ...)
	
}

function connectobjects(src_name, outlet, dst_name, inlet) {
	var src = patcher_objects[src_name];
	var dst = patcher_objects[dst_name];
	if (src && dst) {
		patcher.connect(src, outlet, dst, inlet);
		
		// TODO: will need to hash or store something here, so that the line can be fully destroyed later.
		
		// TODO: create 3D version
		// outlet(0, ...)
	} else {
		error("attempt to connect unknown objects " + src_name + " and " + dst_name + "\n");
	}
}

function disconnectobjects(src_name, outlet, dst_name, inlet) {
	var src = patcher_objects[src_name];
	var dst = patcher_objects[dst_name];
	if (src && dst) {
		patcher.disconnect(src, outlet, dst, inlet);
		
		// TODO: destroy 3D version
		// outlet(0, ...)
	} else {
		error("attempt to disconnect unknown objects " + src_name + " and " + dst_name + "\n");
	}
}



load_state();

//newobject();
	
	
	
// messnamed(scriptingname, msg)
	






