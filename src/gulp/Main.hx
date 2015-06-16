package gulp;
import gulp.Gulp;
import gulp.AGulpStream;

import gulp.Gulp.*;

using gulp.GulpTools;

@:tink class Main {
  static function main() {
    task('task',function() {
      Gulp.src('pippo').pipe('x');
    });

    task('task',function(cb) {
      cb();
    });



    'task'.to_task() => @do {
      '*.json'.to_src();
    };

    'task'.to_task() => @do(cb) {
      trace('hello');
      cb();
    };


    task(['a','b','c']) => @do {

    };

    'task'.to_task() => @do {
      var stream:AGulpStream = '*.json';
      var myStream = stream + '*.json' + '*.txt';
      trace(myStream);

      var plugin1:Dynamic,plugin2:Dynamic;
      var stream = myStream
        << plugin1
        << plugin2
        >> '/a/b'
        << plugin1;

    };

    watch('*.json',function() {
      '*.json'.to_src() >> '/a';
    });

    watch(['*.json','*.txt']) => @do{
      ('*.json':AGS) + '*.txt' >> '/a';
    }




  }
}
