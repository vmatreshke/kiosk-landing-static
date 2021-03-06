gulp         = require 'gulp'
handleErrors = require '../../util/handleErrors'
config       = require('../../config').production.assets

gulp.task 'assets', ->
  gulp.src config.src
    .on 'error', handleErrors
    .pipe gulp.dest config.dest