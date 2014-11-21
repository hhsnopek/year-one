$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'

class NotFoundView extends Marionette.ItemView
  id: '404'
  template: templates.notFound

module.exports = NotFoundView
