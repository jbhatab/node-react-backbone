var gulp = require('gulp');
var browserify = require('gulp-browserify');
var concat = require('gulp-concat');


gulp.task('browserify', function() {
  gulp.src('source/js/main.coffee', {read: false})
    .pipe(browserify({transform: 'coffeeify', extensions: '.coffee'}))
    .pipe(concat('main.js'))
    .pipe(gulp.dest('build/js'));
});

gulp.task('copy', function() {
  gulp.src('source/index.html')
    .pipe(gulp.dest('build'));
});

gulp.task('default', ['browserify', 'copy']);

gulp.task('watch', function() {
  gulp.watch('source/**/*.*', ['default']);
});
