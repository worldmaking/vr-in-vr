autowatch = 1;

// get/create a global object for sharing data between reloads: 
var shared_data = new Global("shared_data");
// initialize a unique_id field if necessary:
if (!shared_data.unique_id) {
	shared_data.unique_id = 0;
}
// utility function to uniquely name variables
function uid(prefix) {
	prefix = prefix || "var";
	return prefix + "_" + shared_data.unique_id++;
}

// create a simple box geometry:
var shape = new JitterObject("jit.gl.gridshape", "world");
shape.name = uid("shape");
shape.shape = "cube";
shape.material = "default_material";
shape.position = [0, 3, 0];

// create a rigid body for it:
var body = new JitterObject("jit.phys.body", "vr.phys");
body.name = uid("body");
body.shape = "cube";
//body.mass = 0;
body.position = shape.position;

// connect them:
body.targetname = shape.name;

