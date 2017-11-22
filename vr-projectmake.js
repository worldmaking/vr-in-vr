
var p = new Patcher();
// show it:
p.front();
var w = p.wind;

var state = {
	objects: {},
	lines: []
};
/*
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

// lookup table from object names to objects:
var patcher_objects = {};

unique_id = 1;
function generate_unique_id() {
	// unique means it doesn't already exist in patcher_objects
	var id = "obj-" + (unique_id++);
	while (patcher_objects[id]) {
		id = "obj-" + (unique_id++);
	}
	return id;
}

function load_state() {
	var f = new File("state.json", "read");
	var json_state = f.readstring(json_state, f.eof);
	f.close();
	
	//post(json_state, "\n");
	state = JSON.parse(json_state);
	
	// populate the patcher:
	populate_patcher();
}

function save_state() {
	var json_state = JSON.stringify(state, null, 2);
	var f = new File("state.json", "write");
	f.writestring(json_state);
	f.close();
}

// TODO factor out the new object/new line stuff
// so that they can also be used by newobject(), connectobjects(), etc.
function populate_patcher() {
	// for each object
	var keys = Object.keys(state.objects);
	for (var i=0; i<keys.length; i++) {
		var obj = state.objects[keys[i]];
		var args = obj.patcher_location.concat(obj.text);
		//post(args, "\n");
		var patcher_object = p.newdefault.apply(p, args);
		patcher_object.varname = obj.id;
		
		if (patcher_objects[obj.id]) {
			// TODO respond intelligently
			error(obj.id, "name already used\n");
		}
		
		// store in lookup table:
		patcher_objects[obj.id] = patcher_object;
		
		// TODO: create 3D version
		// outlet(0, ...)
	}
	
	// for each line
	for (var i=0; i<state.lines.length; i++) {
		var line = state.lines[i];
		var src = patcher_objects[line.src];
		var dst = patcher_objects[line.dst];
		p.connect(src, line.outlet, dst, line.inlet);
		
		// TODO: create 3D version
		// outlet(0, ...)
	}
	
	// trigger loadbangs etc.
	
	
}

// save it:
//p.write();

function close() {
	post("bye\n");
	save_state();
	p.wclose();
}

function newobject() {
	var id = generate_unique_id();
	post(id, "\n");
	
	// blah blah
	
	// state.objects[id] = blah
	
	// add to patcher, 
	// add to 3d scene
}

function deleteobject() {}

function moveobject() {}

function connectobjects() {}



load_state();

//newobject();
	
	
	
// messnamed(scriptingname, msg)
	






