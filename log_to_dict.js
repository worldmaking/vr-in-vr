inlets = 1;
outlets = 1;

function bang()
{
	var d = new Dict("git_log");
	
	d.replace("commit_1::diff", "794b22ce209a017bc435e4fa3b928bdd89153c72");
	d.replace("commit_1::author", "Graham", "Wakefield", "<grrrwaaa@gmail.com>");
	d.replace("commit_1::Date", "Wed Nov 29 16:25:15 2017 -0500");
	d.replace("commit_1::message", "intiial work on a scripting-based editor. still need the reverse lookup from scripting name to the underlying jitter object");
	
	
	}