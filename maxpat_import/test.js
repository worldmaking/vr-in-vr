var Maxpat_Import = require('./maxpat_import.js');



//create a git-in-vr directory and populate it with a state.json
//Maxpat_Import.make_git_dir("/Users/mp/vr-in-vr/maxpat-parse/patch_1.maxpat");

//input the path to the max patch we want to import into vr-editor
Maxpat_Import.maxpat_path = "/Users/mp/vr-in-vr/maxpat-parse/patch_1.maxpat" 
Maxpat_Import.get_json();


//console.log("test " + Maxpat_Import.get_json.done)
//console.log(Maxpat_Import);