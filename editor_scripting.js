
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


////// SCENE ////
var patcher;
var nextobject_y = 10;


function create_patcher() {
	// create new patcher
	patcher = new Patcher(20, 20, 500, 500);
	// show it:
	patcher.front();
}


function close() {
	if (patcher) {
		//patcher.dispose();
	}
}



create_patcher();

// lookup table from object names to objects:
var patcher_objects = {};
function findobject(name) {
	// this might get more complicated later
	return patcher_objects[name];
}

// a lookup table of names to objects created:
var objects = {};
function objects_add(obj) {
	objects[obj.name] = obj;
}

function objects_remove_body(body) {
	var shape = body.targetname;
	if (shape) {
		delete objects[shape];
		//shape.enable only effects the visuals. We still need to remove this object from memory
		//shape.enable = 0;
		//delete shape;
	}
	delete objects[body.name];
	delete body;
}

var shapes = ["sphere", "cube", "capsule", "cylinder", "cone"];

// create some objects to play with
for (var i=0; i<5; i++) {

	objects_create_shape_body(randomRange(-2, 2), randomRange(0, 2), randomRange(-3, 1));

/*
	// create a simple box geometry:
	var shape = new JitterObject("jit.gl.gridshape", "world");
	shape.name = uid("shape");
	shape.shape = randomPick(shapes);
	shape.material = "default_material";
	shape.position = [randomRange(-2, 2), randomRange(0, 2), randomRange(-3, 1)];
	shape.scale = [randomRange(0.01, 0.2), randomRange(0.01, 0.4), randomRange(0.01, 0.2)];
	shape.color = [randomRange(0.2, 1.), randomRange(0.2, 1.), randomRange(0.2, 1.)];
	objects_add(shape);
	// create a rigid body for it:
	var body = new JitterObject("jit.phys.body", "vr-phys");
	body.name = uid("box");
	body.shape = shape.shape;
	body.position = shape.position;
	body.scale = shape.scale;
	body.kinematic = 1;
	body.mass = 0; 
	
	objects_add(body);
	
	// connect them:
	body.targetname = shape.name;
*/
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
	var obj_patcher = patcher.newdefault.apply(patcher, args);
	// set the "scripting name" of the max object
	// (useful if we want to address it directly later)
	obj_patcher.varname = name;
	// store in lookup table:
	patcher_objects[name] = obj_patcher;
	
	return obj_patcher;
}

function objects_create_shape_body(x, y, z){
	
	/*
	// create a simple box geometry:
	var shape = new JitterObject("jit.gl.gridshape", "world");
	shape.name = uid("shape");
	shape.shape = randomPick(shapes);
	shape.material = "default_material";
	shape.position = [x, y, z];
	shape.scale = [randomRange(0.01, 0.2), randomRange(0.01, 0.4), randomRange(0.01, 0.2)];
	shape.color = [randomRange(0.2, 1.), randomRange(0.2, 1.), randomRange(0.2, 1.)];
	objects_add(shape);
	// create a rigid body for it:
	var body = new JitterObject("jit.phys.body", "vr-phys");
	body.name = uid("box");
	body.shape = shape.shape;
	body.position = shape.position;
	body.scale = shape.scale;
	body.kinematic = 1;
	body.mass = 0; 
	
	objects_add(body);
	
	// connect them:
	body.targetname = shape.name;
	*/
	
	var body_name = uid("body");
	var shape_name = uid("shape");
	
	patcher_makeobject(shape_name, [
		"jit.gl.gridshape", "world", 
		"@name", shape_name, 
		"@shape", "cube",
		"@material", "default_material",
		"@position", x, y, z,
		"@scale", 0.2,
		"@color", 1, 1, 1
	]);
	
	patcher_makeobject(body_name, [
		"jit.phys.body", "vr-phys", 
		"@name", body_name, 
		"@shape", "cube",
		"@position", x, y, z,
		"@scale", 0.2,
		"@kinematic", 1,
		"@mass", 0,
		"@targetname", shape_name
	]);
}

////// INTERACTION ////

function collisions(hand, dictname) {
	// get the collision dictionary
	var d = new Dict(dictname); 
	var keys = d.getkeys();
	// workaround for case where there is only one member
	// ([js] turns that into an string instead of an array of length 1)
	if (typeof keys == "string") { keys = [keys]; }
	
	
	// for each collision found:
	for (var i=0; i<keys.length; i++) {
		
		
		
		var collision = d.get(keys[i]);
		// find the collided object:
		var body1 = collision.get("body1");
		var body2 = collision.get("body2");
		
		// TODO: get this from patcher_objects intead???
		
		// pick whichever of these wasn't the ghost:
		var target = objects[body1] || objects[body2];
		if (target) {
			
			
			
			// what happens now depends on the hand state
			if (!hand.selected_object && hand.trigger == "press") {
				// we didn't have anything selected, so pick it up:
				hand.selected_object = target;
				hand.selected_object.position = hand.position;
				hand.selected_object.quat = hand.quat;
				
				
				
				break;
			}
		}
	}
}

// create the state for two hands:
var hands = [];
for (var i=0; i<2; i++) {
	var hand = {
		name: 0 ? "left" : "right",
		position: [0, 0, 0],
		quat: [0, 0, 0, 1],
		trigger: "up",
		trigger_squeeze: 0.,
		button1: "up",
		button2: "up",
		
		selected_object: null,
		
		//ghost: new JitterObject("jit.phys.ghost", "vr-phys"),
	};
	/*
	hand.ghost.name = uid("ghost");
	hand.ghost.shape = "sphere";
	hand.ghost.scale = [0.05, 0.05, 0.05];
	
	// set up a callback and listener to trigger it, so we get collision events:
	hand.ghost.collisions = 1;
	hand.ghost_cb = make_listener_cb(hand);
	hand.ghost_listener = new JitterListener(hand.ghost.name, hand.ghost_cb);
	*/
	hands[i] = hand;
}

// this gets called once per frame
function bang() {
	
	
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
					//hand.selected_object.position += target.position * 2;
					objects_remove_body(hand.selected_object);
					hand.selected_object = null;
					hand.button2 == "down";
				}else{
					hand.selected_object.position = hand.position;
					hand.selected_object.quat = hand.quat;
				}
			} else {
				// let it go:
				hand.selected_object = null;
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

function left_hand (event, x, y, z, w) { controller(hands[0], event, x, y, z, w); }
function right_hand(event, x, y, z, w) { controller(hands[1], event, x, y, z, w); }

function left_hand_collisions(dictname) { 
	collisions(hands[0], dictname);
}
function right_hand_collisions(dictname) { 
	collisions(hands[1], dictname);
}
