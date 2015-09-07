package gulp;

class GulpTools {
  public inline static function to_task(name:String,?tasks:Array<String>,fn:Dynamic)
    return if (tasks != null)  Gulp.task(name,tasks,fn); else Gulp.task(name,fn);
  public inline static function to_src(glob:String) return Gulp.src(glob);
}
