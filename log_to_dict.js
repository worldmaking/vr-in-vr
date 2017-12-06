inlets = 1;
outlets = 1;

/*function bang()
{
	var d = new Dict("git_log");
	
	d.replace("commit_1::diff", "794b22ce209a017bc435e4fa3b928bdd89153c72");
	d.replace("commit_1::author", "Graham", "Wakefield", "<grrrwaaa@gmail.com>");
	d.replace("commit_1::Date", "Wed Nov 29 16:25:15 2017 -0500");
	d.replace("commit_1::message", "intiial work on a scripting-based editor. still need the reverse lookup from scripting name to the underlying jitter object");
}  */

/*
function new_commit(a)
{
	var d = new Dict("git_log");
	d.set(a);
	}
function diff(c, h)	// c = commit number, h = git commit hash
{
var d = new Dict("git_log");
	d.replace(c + "::diff", h);
	}
	
function author(a, f, l, e){	// commit_#::author, firstname, lastname, email
var d = new Dict("git_log");
	d.replace(a, f, l, e);
	}
	
	
	*/
	
/*	
	function new_commit(a){
			var d = new Dict("git_log");
	d.set(a);
	}



function hash(a, b)
{
	var d = new Dict("git_log");
	d.replace(a, b);
	}
	
function author(a, b, c, d) {
		var d = new Dict("git_log");
	d.replace(a, b, c, d);
	}
	
	*/
	
function bang(){
var d = new Dict("git_log");
d.set("commits");
}
				
function author(a, b, c, e) {
		
		var d = new Dict("git_log");
		
		d.replace(a, b, c, e);
		}
		
function date(a, b, c, e, f, g, h) {
		
		var d = new Dict("git_log");
		
		d.replace(a, b, c, e, f, g, h, "GMT_foo");
		}
		
function comment(a, b) {
		
		var d = new Dict("git_log");
		
		d.replace(a, b);
		}