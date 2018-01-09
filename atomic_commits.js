var watch = require('node-watch');
const path = require('path');
const Max = require('max-api');
const fs = require('fs-extra'); 



var cli_args = process.argv; // get the args
// the CLI arguments should be diff1 and diff2!
  var diff1 = cli_args[2];
console.log(diff1);



//var count = 0; //this is the total number of .html files already in the folder. 

var filewatch = Max.addHandler("vrgit", (msg) => {
Max.post(filewatch);
});

console.log(filewatch);

var util = require('util')
var exec = require('child_process').exec;
var child;
var child2;
var child3;
var child4;
var child5;
var child6;

const delay = require('delay');

var files = [
  //'/path/to/file',
  'index.html'
];

watch(diff1, { recursive: true }, function(evt, name) {
  console.log('%s changed.', name);


child = exec("ls -lR /Users/mp/thst6329/docs/*.html | wc -l", function (error, stdout, stderr)
//{ count = stdout
//	console.log(count) //need to make this global...
});

/*
{count++;}

// output current state of git to a .diff file
child = exec("git diff -U$(wc -l /Users/mp/thst6329/docs/index.html | xargs) > ethnography.diff")

child6 = exec("cp /Users/mp/thst6329/docs/index.html /Users/mp/thst6329/docs/index" + count + ".html")
//convert the .diff file to html using diff2html
child2 = exec("diff2html -i file ethnography.diff -F page" + count + ".html -- -M HEAD~1");
console.log("page" + count + ".html")
        // Executed after 200 milliseconds 

//couldn't get the 'promise' to work, so using just a delay, add the unstaged changes
delay(500)
   
    .then(() => {
    	child3 = exec("git add .");
    	
    });


//wait until end, then autocommit!
delay(1000)
    
.then(() => {
	child4 = exec('git commit -m "autocommit " + count + " for the ethnography paper"');
    console.log("autocommit " + count + " for the ethnography paper")

        // Executed after 200 milliseconds 
    });



});

 /*
var notifications = new Notify(files);
notifications.on('change', function (file, event, path) {
	
	{child = exec("git diff -U$(wc -l /Users/mp/thst6329/docs/index.html | xargs) > ethnography.diff");}


	{
myFuncCalls++;

}
  console.log(myFuncCalls);


});
 

 
// kill everything 
//notifications.close();

*/