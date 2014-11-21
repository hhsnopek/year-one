axis = require 'axis'
rupture = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
browserify = require 'roots-browserify'
browserify_data = require 'browserify-data'
templates = require 'client-templates'
roots_yaml = require 'roots-yaml'

module.exports =
  locals:
    title: 'Year One'
    description: 'First of many years in my relationship with Shayla'

  ignores: ['README.md', '**/layout.*', '**/_*', 'ship.conf', '.DS_Store', '.gitignore', 'npm-debug.log']

  extensions: [
    browserify(files: 'assets/js/main.coffee', out: 'js/build.js', transforms: ['coffeeify', browserify_data], minify: false)
    templates(base: 'assets/js/templates', compress: true)
    roots_yaml(source: 'data')
    ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]

  jade:
    pretty: true

  server:
    clean_urls: true
    routes:
      "./!(*.*)"  : "/index.html"
      "**/!(*.*)" : "/index.html"
      "./*.html"  : "/index.html"
      "**/*.html" : "/index.html"
