package gulp;
import gulp.Gulp;
import gulp.AGulpStream;
using gulp.GulpTools;

class Main {
  static function main() {
    Gulp.task('task',function() {
      Gulp.src('pippo').pipe('x');
    });

    Gulp.task('task',function(cb) {
      cb();
    });



    'task'.to_task(function() {
      '*.json'.to_src();
    });

    'task'.to_task(function(cb) {
      cb();
    });


    Gulp.task(['a','b','c'],function() {

    });

    'task'.to_task(function() {
      var stream:AGulpStream = '*.json';
      var myStream = stream + '*.json' + '*.txt';
      trace(myStream);

      var plugin1:Dynamic,plugin2:Dynamic;
      var stream = myStream
        << plugin1
        << plugin2
        >> '/a/b'
        << plugin1;

    });


  }
}
