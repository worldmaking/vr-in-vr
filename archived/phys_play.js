autowatch = 1;

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

// a lookup table of names to objects created:
var objects = {};
function objects_add(obj) {
	objects[obj.name] = obj;
}

var shapes = ["sphere", "cube", "capsule", "cylinder", "cone"];

// create some objects to play with
for (var i=0; i<100; i++) {

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
	// set some physics properties:
	body.restitution = 0.2; 
	body.friction = 0; 
	body.rolling_friction = 0;
	body.damping = [0.2, 0.2];
	// make a rough guess for the mass based on scale:
	body.mass = body.scale[0] * body.scale[1] * body.scale[2];
	
	objects_add(body);
	
	// connect them:
	body.targetname = shape.name;
}

////// INTERACTION ////

// create a unique callback handler for each hand
// (irritating JS feature means this has to be a global)
function make_listener_cb(hand) {
	// this function is called whenever the ghost sends a notification, e.g. on collisions
	return function(event) { 
		// check that this is a collision event and has a dictionary argument:
		if (event.eventname == "collisions" && event.args[0] == "dictionary") {
			// get the collision dictionary
			var d = new Dict(event.args[1]); 
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
				// pick whichever of these wasn't the ghost:
				var target = objects[body1] || objects[body2];
				if (target) {
					// what happens now depends on the hand state
					if (!hand.selected_object && hand.trigger) {
						// we didn't have anything selected, so pick it up:
						hand.selected_object = target;
						target.kinematic = 1;
					}
					// are wel holding anything?
					if (hand.selected_object == target) {
						// are we are still holding (dragging)?
						if (hand.trigger) {
							target.position = hand.position;
							target.quat = hand.quat;
						} else {
							// let it go:
							hand.selected_object = null;
							target.kinematic = 0;
						}
					}
				}
			}
		}
	}
}

// create the state for two hands:
var hands = [];
for (var i=0; i<2; i++) {
	var hand = {
		position: [0, 0, 0],
		quat: [0, 0, 0, 1],
		trigger: false,
		trigger_squeeze: 0.,
		
		selected_object: null,
		
		ghost: new JitterObject("jit.phys.ghost", "vr-phys"),
	};
	hand.ghost.name = uid("ghost");
	hand.ghost.shape = "sphere";
	hand.ghost.scale = [0.05, 0.05, 0.05];
	
	// set up a callback and listener to trigger it, so we get collision events:
	hand.ghost.collisions = 1;
	hand.ghost_cb = make_listener_cb(hand);
	hand.ghost_listener = new JitterListener(hand.ghost.name, hand.ghost_cb);
	
	hands[i] = hand;
}

// function called to update tracking data for each hand
function controller(hand, event, x, y, z, w) {
	switch(event) {
		case "position" : {
			hand.position = [x, y, z];
			hand.ghost.position = hand.position;
		} break;
		case "quat" : {
			hand.quat = [x, y, z, w];
			hand.ghost.quat = hand.quat;
		} break;
		case "trigger" : {
			hand.trigger = (x != 0);
			hand.trigger_squeeze = y;
		} break;
		/* other keys: velocity, angular velocity, hand_trigger, thumbstick, buttons, etc. see tracking patcher */
	}
}

function left_hand (event, x, y, z, w) { controller(hands[0], event, x, y, z, w); }
function right_hand(event, x, y, z, w) { controller(hands[1], event, x, y, z, w); }

