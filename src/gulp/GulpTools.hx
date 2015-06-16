package gulp;

class GulpTools {
  public inline static function to_task(name:String,fn:Dynamic) return Gulp.task(name,fn);
  public inline static function to_src(glob:String) return Gulp.src(glob);
}
