(function (console) { "use strict";
var jsonManifest = require("json-manifest");
var md5 = require("gulp-md5");
var rename = require("gulp-rename");
var uglify = require("gulp-uglify");
var mainBowerFiles = require("gulp-main-bower-files");
var gulp = require("gulp");
var gulp_Main = function() { };
gulp_Main.main = function() {
	gulp.task("bower",function() {
		var tmp;
		var tmp1;
		var tmp2;
		var tmp3;
		var this5 = gulp.src("bower.json");
		var d3 = mainBowerFiles();
		tmp3 = this5.pipe(d3);
		var this4 = tmp3;
		var d2 = uglify();
		tmp2 = this4.pipe(d2);
		var this3 = tmp2;
		var d1 = md5();
		tmp1 = this3.pipe(d1);
		var this2 = tmp1;
		var d = rename(function(path) {
			return path.extname = ".min.js";
		});
		tmp = this2.pipe(d);
		var this1 = tmp;
		this1.pipe(gulp.dest("js"));
	});
	var tasks = ["bower"];
	if(tasks != null) gulp.task("manifest",tasks,function() {
		var file = js_node_Fs.createWriteStream("file.txt");
		var this6 = jsonManifest("js","*/*.min.js");
		this6.pipe(file);
	}); else gulp.task("manifest",function() {
		var file = js_node_Fs.createWriteStream("file.txt");
		var this6 = jsonManifest("js","*/*.min.js");
		this6.pipe(file);
	});
};
var js_node_Fs = require("fs");
gulp_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
