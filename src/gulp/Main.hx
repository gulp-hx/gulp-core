package gulp;
import gulp.Gulp;
import gulp.AGulpStream;
import gulp.Gulp.*;
import js.node.Fs;

using gulp.GulpTools;

@:tink class Main {
  static function main() {


  'bower'.to_task() => @do {


    'bower.json'.to_src()
      << Bower._()
      << Uglify._()
      << MD5._()
      << Rename._([path] => path.extname = ".min.js" )
      >> 'js';
  };


  'manifest'.to_task(['bower']) => @do {
    var file = Fs.createWriteStream('file.txt');
    JsonManifest._('js','*/*.min.js') << file;
  }

/*
    task('task',function() {
      Gulp.src('pippo').pipe('x');
    });

    task('task',function(cb) {
      cb();
    });


    'default'.to_task() => @do {
      trace('ciuppa');
    }

    'task'.to_task() => @do {
      '*.json'.to_src();
    };

    'taskla'.to_task(['a','b','c']) => @do(cb) {
      trace('hello');
      cb();
    };


    task('cippalippa',['a','b','c']) => @do {

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

*/


  }
}
