app     = require './app'
gulp    = require 'gulp'
plumber = require 'gulp-plumber'
coffee  = require 'gulp-coffee'
sass    = require 'gulp-sass'
pug     = require 'gulp-pug'
uglify  = require 'gulp-uglify'
bs      = require 'browser-sync'
  .create()

gulp.task 'coffee', ->
  gulp.src('./src/**/*.coffee')
    .pipe plumber()
    .pipe coffee()
    .pipe uglify()
    .pipe gulp.dest('./dist')

gulp.task 'sass', ->
  gulp.src './src/**/*.scss'
    .pipe plumber()
    .pipe sass(outputStyle: 'compressed')
    .pipe gulp.dest('./dist')

gulp.task 'pug', ->
  gulp.src './src/**/*.pug'
    .pipe plumber()
    .pipe pug(locals: app.view())
    .pipe gulp.dest('./dist')

gulp.task 'markdown', ->
  gulp.src './src/**/*.md'
    .pipe plumber()
    .pipe gulp.dest('./dist')

gulp.task 'assets', ->
  gulp.src "./node_modules/gulp.(#{app.assets.join('|')})/**"
    .pipe plumber()
    .pipe gulp.dest('./dist/vendor')

gulp.task 'serve', ->
  bs.init server: 'dist'
  gulp.watch 'src/**/*.*',      gulp.series 'pug'
  gulp.watch 'src/**/*.coffee', gulp.series 'coffee'
  gulp.watch 'src/**/*.scss',   gulp.series 'sass'
  gulp.watch 'src/**/*.md',     gulp.series 'markdown'
  gulp.watch 'dist/**/*'
    .on 'change', bs.reload

gulp.task 'build',
  gulp.parallel 'pug', 'coffee', 'sass', 'markdown', 'assets'

gulp.task 'server',
  gulp.series 'build', 'serve'

gulp.task 'default',
  gulp.series 'server'
