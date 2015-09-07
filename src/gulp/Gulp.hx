package gulp;
import gulp.AGulpStream;


@:jsRequire("json-manifest") @:native('jsonManifest') extern class JsonManifest {
  @:selfCall static public function _(folder:String,glob:String):AGS;
}

@:jsRequire("gulp-md5") @:native('md5') extern class MD5 {
  @:selfCall static public function _(?opts:Dynamic):AGS;
}

@:jsRequire("gulp-rename") @:native('rename') extern class Rename {
  @:selfCall static public function _(?opts:Dynamic):AGS;
}


@:jsRequire("gulp-uglify") @:native('uglify') extern class Uglify {
  @:selfCall static public function _(?opts:Dynamic):AGS;
}


@:jsRequire("gulp-main-bower-files") @:native('mainBowerFiles') extern class Bower {
  @:selfCall static public function _(?opts:Dynamic):AGS;
}



@:jsRequire("merge2") @:native('merge2') extern class Merge {
  @:selfCall static public function _(streamA:AGS,streamB:AGS):AGS;
}


@:jsRequire("gulp") @:native('gulp') extern class Gulp {
  @:overload(function(name:String,tasks:Array<Dynamic>,fn:(Void->Void)->Void):Dynamic{})
  @:overload(function(name:String,tasks:Array<Dynamic>,fn:Void->Void):Dynamic{})
  @:overload(function(name:String,fn:(Void->Void)->Void):Dynamic{})
  @:overload(function(name:String,fn:Void->Void):Void{})
  public static function task():Void;
  public static function src(glob:String):AGulpStream;
  public static function dest(path:String):Dynamic;
  @:overload(function(glob:Array<String>,fn:Void->Void):Void{})
  @:overload(function(glob:String,fn:Void->Void):Void{})
  public static function watch():AGulpStream;
}
