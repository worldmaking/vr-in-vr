

var p = new Patcher();
// show it:
p.front();
var w = p.wind;


p.newdefault(10,10, "toggle");

// save it:
//p.write();

function close() {
	post("bye\n");
	p.dispose();
}




	
	
	
	
	






