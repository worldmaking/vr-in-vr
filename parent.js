outlets = 1;
setoutletassist(0,"parent patcher name (symbol)");


function bang()
{
	outlet(4,"bang");
	this.patcher.apply(iterfun);
}

function iterfun(b)
{
	outlet(0, b.patcher.name);
	
	return true;	
}
iterfun.local=1; // keep private