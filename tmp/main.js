(function (console) { "use strict";
var merge2 = require("merge2");
var gulp = require("gulp");
var gulp_Main = function() { };
gulp_Main.main = function() {
	gulp.task("task",function() {
		gulp.src("pippo").pipe("x");
	});
	gulp.task("task",function(cb) {
		cb();
	});
	gulp.task("task",function() {
		gulp.src("*.json");
	});
	gulp.task("task",function(cb1) {
		console.log("hello");
		cb1();
	});
	gulp.task(["a","b","c"],function() {
	});
	gulp.task("task",function() {
		var tmp;
		var stream1 = gulp.src("*.json");
		tmp = stream1;
		var stream = tmp;
		var tmp1;
		var tmp2;
		var tmp4;
		var stream4 = gulp.src("*.json");
		tmp4 = stream4;
		var stream3 = tmp4;
		var new_stream1 = merge2(stream,stream3);
		tmp2 = new_stream1;
		var this1 = tmp2;
		var tmp3;
		var stream5 = gulp.src("*.txt");
		tmp3 = stream5;
		var stream2 = tmp3;
		var new_stream = merge2(this1,stream2);
		tmp1 = new_stream;
		var myStream = tmp1;
		console.log(myStream);
		var plugin1;
		var plugin2;
		var tmp5;
		var tmp6;
		var this4 = myStream.pipe(plugin1);
		tmp6 = this4.pipe(plugin2);
		var this3 = tmp6;
		tmp5 = this3.pipe(gulp.dest("/a/b"));
		var this2 = tmp5;
		this2.pipe(plugin1);
	});
	gulp.watch("*.json",function() {
		var this5 = gulp.src("*.json");
		this5.pipe(gulp.dest("/a"));
	});
	gulp.watch(["*.json","*.txt"],function() {
		var tmp7;
		var tmp8;
		var stream7 = gulp.src("*.json");
		tmp8 = stream7;
		var this7 = tmp8;
		var tmp9;
		var stream8 = gulp.src("*.txt");
		tmp9 = stream8;
		var stream6 = tmp9;
		var new_stream2 = merge2(this7,stream6);
		tmp7 = new_stream2;
		var this6 = tmp7;
		this6.pipe(gulp.dest("/a"));
	});
};
gulp_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
