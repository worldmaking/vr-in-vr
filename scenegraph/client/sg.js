



var scene_box;
var scene_patcher;

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