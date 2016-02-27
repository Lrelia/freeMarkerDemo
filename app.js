var Freemarker = require('freemarker.js'),
	express = require('express'),
	staticPath = __dirname + '/dist/public',
	path = require('path'),
	app = module.exports = express();

// 数据设置
var sample0Data = require('./data/sample-0-Data'),
	sample1Data = require('./data/sample-1-Data'),
	sample2Data = require('./data/sample-2-Data'),
	sample3Data = require('./data/sample-3-Data');

var fm = new Freemarker({
	viewRoot: path.join(__dirname, "/app")
});

console.log(path.join(__dirname, "/app"));

app.set('port', process.env.PORT || 8088);

// 设置跨域访问
app.all('*', function(req, res, next) {
	res.header("Access-Control-Allow-Origin", "*");
	res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
	res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
	res.header("x-Powered-By", " 3.2.1");
	res.header("Content-Type", "application/json;charset=utf-8");
	next();
});

// 路由设置
app.get('/sample0', function(req, res) {
	var result = fm.renderSync('sample-0.ftl', sample0Data);
	res.type('html');
	res.send(result);
});
app.get('/sample1', function(req, res) {
	var result = fm.renderSync('sample-1.ftl', sample1Data);
	res.type('html');
	res.send(result);
});
app.get('/sample2', function(req, res) {
	var result = fm.renderSync('sample-2.ftl', sample2Data);
	res.type('html');
	res.send(result);
});
app.get('/sample3', function(req, res) {
	var result = fm.renderSync('sample-3.ftl', sample3Data);
	res.type('html');
	res.send(result);
});

app.listen(app.get('port'), function() {
	console.log('[%s] Express server listening on port %d', app.get('env').toUpperCase(), app.get('port'));
});