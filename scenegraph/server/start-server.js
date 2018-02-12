#!/usr/bin/env node

const nodemon = require('nodemon');
const app = "server.js";

nodemon({
	script: app
});

nodemon.on('start', function () {
	console.log(app + ' has started');
}).on('quit', function () {
	console.log(app + ' has quit');
	process.exit();
}).on('restart', function (files) {
	console.log(app + ' restarted due to: ', files);
});