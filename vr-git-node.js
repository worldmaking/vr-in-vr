const path = require('path');
const Max = require('max-api');

var util = require('util')
var exec = require('child_process').exec;

var child;


// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);

// Use the 'addHandler' function to register a function for a particular message
Max.addHandler("bang", () => {
});

// Use the 'outlet' function to send messages out of node.script's outlet
Max.addHandler("vrgit", (msg) => {

	child = exec(msg, function (error, stdout, stderr) {
		
	 	//git_log2 = JSON.stringify(compressed);
	 	console.log("***WARNING***: do not attempt to apply a patch to the vr-in-vr repo until you can demonstrate a safe process to Graham within a practice repository, i.e. '/gitpatch'");
	 
	 	//attempt to output stdout out of max object's 0 outlet:
	 	Max.outlet(stdout);
		Max.post(stdout);
	 });
});
