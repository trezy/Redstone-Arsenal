module.exports = (grunt) ->
  grunt.initConfig
    # Load the Node package file
    pkg: grunt.file.readJSON('package.json')

    clean:
      src: [
        'build/**/*.html',
        'build/**/*.css',
        'build/**/*.js',
        'build/**/*.{png,jpg,giff}',
        '!build/.gitignore',
        '!build/**/.gitignore'
      ]

    # Compile Coffeescript files
    coffee:
      dev:
        options:
          # Turning on sourcemaps enables easy linking back to the original Coffeescript file
          sourceMap: true
        files:
          'build/js/app.js': 'coffee/**/*.litcoffee'

    concat:
      libs:
        src: [
          'bower_components/requirejs/require.js',
          'bower_components/jquery/dist/jquery.js',
          'bower_components/handlebars/handlebars.js',
          'bower_components/ember/ember.js'
        ]
        dest: 'build/js/libs.js'

    handlebars:
      options:
        namespace: 'RedstoneArsenal.templates'
      compile:
        files:
          'build/js/templates.js': ['handlebars/**/*.hbs']

    imagemin:
      dynamic:
        files: [
          expand: true
          src: ['img/*.{png,jpg,gif}']
          dest: 'build/img'
        ]

    sass:
      dev:
        options:
          style: 'expanded'
        files:
          'build/css/app.css': 'scss/global.scss'

    uglify:
      options:
        sourceMap: true
      files:
        'build/js/libs.min.js': ['build/js/libs.js']

    watch:
      options:
        livereload: true
      coffee:
        files: ['coffee/**/*.coffee']
        tasks: ['coffee:dev']
      handlebars:
        files: ['handlebars/**/*.hbs']
        tasks: ['handlebars']
      img:
        files: ['img/*.{png,jpg,gif}']
        tasks: ['imagemin']
      sass:
        files: ['scss/**/*.scss']
        tasks: ['sass:dev']

  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-handlebars'
  grunt.loadNpmTasks 'grunt-contrib-imagemin'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'build', ['clean', 'concat:libs', 'coffee:dev', 'sass:dev', 'imagemin']
