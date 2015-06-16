package gulp;
import gulp.AGulpStream;

@:jsRequire("merge2") @:native('merge2') extern class Merge {
  @:selfCall static public function _(streamA:AGS,streamB:AGS):AGS;
}


@:jsRequire("gulp") @:native('gulp') extern class Gulp{
  @:overload(function(tasks:Array<Dynamic>,fn:(Void->Void)->Void):Dynamic{})
  @:overload(function(tasks:Array<Dynamic>,fn:Void->Void):Dynamic{})
  @:overload(function(name:String,fn:(Void->Void)->Void):Dynamic{})
  @:overload(function(name:String,fn:Void->Void):Void{})
  public static function task():Void;
  public static function src(glob:String):AGulpStream;
  public static function dest(path:String):Dynamic;
  @:overload(function(glob:String,fn:Void->Void):Void{})
  public static function watch():AGulpStream;
}
