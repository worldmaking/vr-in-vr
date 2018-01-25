
console.log("Listening to Max on port 8080\n");




const WebSocket = require('ws');
const ws = new WebSocket('ws://localhost:8080');

ws.on('open', function open() {
  //ws.send('something');
});

ws.on('message', function incoming(data) {
  console.log(data);
  




  ws.send(data);
});

/*
var http = require('http');

http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Hello World!');
}).listen(8088);
*/




