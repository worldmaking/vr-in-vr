
////// UTILITIES ////

// get/create a global object for sharing data between reloads: 
var shared_data = new Global("shared_data");
// initialize a unique_id field if necessary:
if (!shared_data.unique_id) {
	shared_data.unique_id = 0;
}
// utility function to uniquely name variables
// (important for jitter objects that must be uniquely named)
function uid(prefix) {
	prefix = prefix || "var";
	return prefix + "_" + shared_data.unique_id++;
}

function randomRange(lo, hi) {
	return Math.random() * (hi-lo) + lo;
}
function randomInt(hi) {
	return Math.floor(Math.random() * hi);
}
function randomPick(arr) {
	return arr[randomInt(arr.length)];
}

////// STATE ////


var scene;
var scene_box = this.patcher.getnamed("scene");
if (scene_box && scene_box.subpatcher()) {
	scene = scene_box.subpatcher();
	
	// open it
	//scene.front();
	
	// TODO: inspect & build library of what already exists in the scene?
	scene.apply(function(b) {
		//post(" " + b.patcher.name + " " + b.maxclass + " " + b.varname + " " + b.rect + "\n");
		scene.remove(b);
	});

} else {
	error("need to create a scene subpatcher\n");
}


//var patcher;
// lookup table from object names to objects:
var scene_objects = {};

// map editor jit.phys.body objects to their correspoinding vrbox
var scene_bodies = {};

function objects_add(name, obj) {
	post("adding", name, obj, "\n");
	
	scene_objects[name] = obj;
}

function findobject(name) {
	return scene_objects[name];
}

// next location for a patcher object:
var nextobject_y = 10;

// create the state for two hands:
var hands = [];
for (var i=0; i<2; i++) {
	hands[i] = {
		name: 0 ? "left" : "right",
		position: [0, 0, 0],
		quat: [0, 0, 0, 1],
		trigger: "up",
		trigger_squeeze: 0.,
		button1: "up",
		button2: "up",
		
		selected_object: null,
	};
}

// create some objects to play with
for (var i=0; i<5; i++) {
	objects_create_shape_body(randomRange(-2, 2), randomRange(0, 2), randomRange(-3, 1));
}

function test() {
	
	var p = this.patcher.getnamed("vrbox-test")
	messnamed("vrbox_234", "foo", 23);
	
}

function objects_create_shape_body(x, y, z){
	var body_name = uid("body");
	var shape_name = uid("shape");
	
	/*
	patcher_makeobject(shape_name, [
		"jit.gl.gridshape", "editor-world", 
		"@name", shape_name, 
		"@shape", "cube",
		"@material", "default_material",
		"@position", x, y, z,
		"@scale", 0.2,
		"@color", 1, 1, 1
	]);
	*/
	
	var box_name = uid("vrbox")
	var box = patcher_makeobject(box_name, [
		"vr-box", box_name,
		"@name", box_name,
		"@position", x, y, z,
		"text", box_name
	]);
	
	// find the embedded body, rename it, and hook it up:
	var box_patcher = box.subpatcher();
	box_patcher.apply(function(e) {
		if (e.maxclass == "jit.phys.body") {
			e.varname = box_name + "_body";
			objects_add(e.varname, e);
			scene_bodies[e.varname] = box_name;
		}
	});
	
	/*
	patcher_makeobject(body_name, [
		"jit.phys.body", "vr-phys", 
		"@name", body_name, 
		"@shape", "cube",
		"@position", x, y, z,
		"@scale", 0.2,
		"@kinematic", 1,
		"@mass", 0,
		"@targetname", box_name
	]);
	*/
}


function objects_remove_body(body) {
	
	post("remove", body.varname, "\n");
	
	// easy way out:
	scene.remove(body.patcher.box);
	
	delete scene_bodies[body.varname];
}


function patcher_makeobject(name, args) {
	if (findobject(name)) {
		error(name + " name already in use\n");
		return;
	}
	// generate the arguments for patcher.newdefault
	// as an array containing x, y, text:
	var args = ([20, nextobject_y]).concat(args) ;
	nextobject_y += 25;
	//post(args, "\n");
	// call patcher.newdefault to create a new max object
	// (using apply() so we can pass arguments as an array):
	var obj_patcher = scene.newdefault.apply(scene, args);
	// set the "scripting name" of the max object
	// (useful if we want to address it directly later)
	obj_patcher.varname = name;
	// store in lookup table:
	objects_add(name, obj_patcher );
	
	return obj_patcher;
}

function patcher_removeobject(name) {
	var obj = findobject(name);
	if (!obj) {
		error(name + " object not found\n");
		return;
	}
	
	delete scene_objects[name];
	
	scene.remove(obj);
}

function collisions(hand, dictname) {
	// get the collision dictionary
	var d = new Dict(dictname); 
	var keys = d.getkeys();
	// workaround for case where there is only one member
	// ([js] turns that into an string instead of an array of length 1)
	if (typeof keys == "string") { keys = [keys]; }
	
	if (hand.trigger == "press") {
		// for each collision found:
		for (var i=0; i<keys.length; i++) {
			
			var collision = d.get(keys[i]);
			// find the collided object:
			var body1 = collision.get("body1");
			var body2 = collision.get("body2");
			
			// TODO: get this from patcher_objects intead???
			
			// pick whichever of these wasn't the ghost:
			var target = findobject(body1) || findobject(body2); 
			
			post(body1, body2, target, "press\n");
			if (target) {
				post(body1, body2, target, hand.selected_object, hand.trigger, "\n");
				// what happens now depends on the hand state
				if (!hand.selected_object) {
					// we didn't have anything selected, so pick it up:
					hand.selected_object = target;
					
					post("Picked up:", target.varname, "\n");
					//hand.selected_object.position = hand.position;
					//hand.selected_object.quat = hand.quat;
					
					break;
				}
			}
		}
	}
}

// function called to update tracking data for each hand
function controller(hand, event, x, y, z, w) {
	switch(event) {
		case "position" : {
			hand.position = [x, y, z];
			//hand.ghost.position = hand.position;
		} break;
		case "quat" : {
			hand.quat = [x, y, z, w];
			//hand.ghost.quat = hand.quat;
		} break;
		case "trigger" : {
			//hand.trigger = (x != 0);
			if(x != 0){
				if(hand.trigger == "press"){
					hand.trigger = "down";
				}else if(hand.trigger != "down") {
					hand.trigger = "press";
				}
			}else{
				hand.trigger = "up";
			}
			hand.trigger_squeeze = y;
		} break;
		case "buttons" : {
			if(x != 0){
				if(hand.button1 == "press"){
					hand.button1 = "down";
				} else if (hand.button1 != "down") {
					hand.button1 = "press";
				}
			} else {
				hand.button1 = "up";
			}
			
			if(y != 0){
				if(hand.button2 == "press"){
					hand.button2 = "down";
				} else if (hand.button2 != "down"){
					hand.button2 = "press";
				}
			}else{
				hand.button2 = "up";
			}
		} break;
		/* other keys: velocity, angular velocity, hand_trigger, thumbstick, buttons, etc. see tracking patcher */
	}		
}

function bang() {
	
	var names = Object.keys(scene_objects);
	var name = randomPick(names);
	
	//messnamed(name, "
	
	//post(name, "\n");
	
	for (var i=0; i<2; i++) {
		var hand = hands[i];
		
		// create object using A button
		if (hand.button1 == "press"){
			objects_create_shape_body(hand.position[0], hand.position[1], hand.position[2]);
			hand.button1 == "down";
		}

		// are we holding anything?
		if (hand.selected_object) {
			// are we are still holding (dragging)?
			if (hand.trigger == "down" || hand.trigger == "press") {
				// destroy objects with B button
				if(hand.button2 == "press"){
					// destroy object:
					objects_remove_body(hand.selected_object);
					hand.selected_object = null;
					hand.button2 = "down";
				}else{
					// dragging around
					//post("dragging", hand.selected_object.varname, "\n");
					hand.selected_object.message("position", hand.position[0], hand.position[1], hand.position[2]);
					hand.selected_object.message("quat", hand.quat[0], hand.quat[1], hand.quat[2], hand.quat[3]);
				}
			} else {
				// let it go:
				hand.selected_object = null;
			}
		}
	}
}

function left_hand (event, x, y, z, w) { controller(hands[0], event, x, y, z, w); }
function right_hand(event, x, y, z, w) { controller(hands[1], event, x, y, z, w); }

function left_hand_collisions(dictname) { 
	collisions(hands[0], dictname);
}
function right_hand_collisions(dictname) { 
	collisions(hands[1], dictname);
}



function close() {
	if (patcher) {
		//patcher.dispose();
	}
}