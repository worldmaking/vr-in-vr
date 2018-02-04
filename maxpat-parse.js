const path = require('path');
const fs = require('fs-extra'); 
var exec = require('child-process-promise');
var peg = require("pegjs");
var child;

var args = process.argv.slice(2);

var maxpat = args[0];


//console.log(maxpat);




//exec('jsonling ' + maxpat + ' --sort-keys --in-place', {cwd: __dirname + "/maxpat-parse/"});


//console.log(condensed);



function test (maxpat) {

			exec('jsonlint --sort-keys /Users/mp/vr-in-vr/maxpat-parse/patch_1.maxpat', (error, stdout, stderr) => {
	
			console.log(stdout);
		})

/*fs.copy(__dirname + '/maxpat-parse/patch_1.maxpat', __dirname + '/maxpat-parse/patch_1.json', { replace: false }, function (err) {
  if (err) {
    throw err;
  }
   console.log("renamed 'maxpat' to 'json'");

	var maxpat = require(__dirname + '/maxpat-parse/patch_1.json');

		.then(function (result) {

		
			exec('jsonling ' + maxpat + ' --sort-keys', {cwd: __dirname + "/maxpat-parse/"}, (error, stdout, stderr) => {
	
			console.log(stdout);


})


});




		//fs.writeFileSync(maxpat);
		}); 

			*/

}
//var clean_json = jsonminify(maxpat_json);

//console.log(clean_json);