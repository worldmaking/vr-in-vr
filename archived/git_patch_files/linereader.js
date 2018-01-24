var path = require('path');
var LineReader = require('node-line-reader').LineReader;
 
var reader = new LineReader(path.join(/* '/home/user', */ 'test.patch'));
 
// Each execution of nextLine will get a following line of text from the input file 
reader.nextLine(function (err, line) {
    if (!err) {
        console.log('file line: ', line);
    }
});