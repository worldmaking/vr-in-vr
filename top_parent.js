inlets = 1;
outlets = 1;
setinletassist(0, "Some message");
function bang()
{
   var p = this.patcher;
   while (p.parentpatcher)  // If I have a parent, keep going up
      {
         p = p.parentpatcher;
      }
   outlet(0, p.name);
}