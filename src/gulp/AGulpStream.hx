package gulp;
import gulp.Gulp;
using gulp.GulpStreamTools;

typedef GS = GulpStream
typedef AGS = AGulpStream

@:forward abstract AGulpStream(GS) from GS to GS {
  public inline function new(stream:GS) this = stream;
  @:from static public inline function fromString(s:String) return new AGS(Gulp.src(s));
  @:op(A+B) public inline function merge(stream:AGS) return this.merge(stream);
  @:op(A<<B) public inline function add(d:Dynamic) return this.pipe(d);
  @:op(A>>B) public inline function dest(path:String) return this.pipe(Gulp.dest(path));
}
