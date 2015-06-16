package gulp;
import gulp.AGulpStream;
import gulp.Gulp;

class GulpStreamTools {
  public static inline function merge(streamA:AGS,streamB:AGS):AGS {
    var new_stream = Merge._(streamA,streamB);
    return new_stream;
  }
}
