(function (console) { "use strict";
var gulpShell = require("gulp-shell");
var jsonManifest = require("json-manifest");
var md5 = require("gulp-md5");
var rename = require("gulp-rename");
var uglify = require("gulp-uglify");
var mainBowerFiles = require("gulp-main-bower-files");
var gulp = require("gulp");
var gulp_Main = function() { };
gulp_Main.main = function() {
	gulp.task("hello",function() {
		var tmp;
		var tmp1;
		var this3 = gulp.src("");
		var d2 = gulpShell("ls -la");
		tmp1 = this3.pipe(d2);
		var this2 = tmp1;
		var d1 = gulpShell("ls -la");
		tmp = this2.pipe(d1);
		var this1 = tmp;
		var d = gulpShell("ls -la");
		this1.pipe(d);
	});
	var fn = gulpShell.task(["ls -la","echo \"pippa\""]);
	gulp.task("hello2",fn);
	gulp.task("bower",function() {
		var tmp2;
		var tmp3;
		var tmp4;
		var tmp5;
		var this8 = gulp.src("bower.json");
		var d6 = mainBowerFiles();
		tmp5 = this8.pipe(d6);
		var this7 = tmp5;
		var d5 = uglify();
		tmp4 = this7.pipe(d5);
		var this6 = tmp4;
		var d4 = md5();
		tmp3 = this6.pipe(d4);
		var this5 = tmp3;
		var d3 = rename(function(path) {
			return path.extname = ".min.js";
		});
		tmp2 = this5.pipe(d3);
		var this4 = tmp2;
		this4.pipe(gulp.dest("js"));
	});
	var tasks = ["bower"];
	if(tasks != null) gulp.task("manifest",tasks,function() {
		var file = js_node_Fs.createWriteStream("file.txt");
		var this9 = jsonManifest("js","*/*.min.js");
		this9.pipe(file);
	}); else gulp.task("manifest",function() {
		var file = js_node_Fs.createWriteStream("file.txt");
		var this9 = jsonManifest("js","*/*.min.js");
		this9.pipe(file);
	});
};
var js_node_Fs = require("fs");
gulp_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
