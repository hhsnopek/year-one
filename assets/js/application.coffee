Marionette = require 'backbone.marionette'

App = new Marionette.Application

App.addRegions
  header: "header"
  main: "main"

module.exports = App
