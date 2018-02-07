const stringifyObject = require('stringify-object');
 
const obj = {
    foo: 'bar',
    'arr': [1, 2, 3],
    nested: { hello: "world" }
};
 
const pretty = stringifyObject(obj, {
    indent: '  ',
    singleQuotes: false
});
 
console.log(pretty);