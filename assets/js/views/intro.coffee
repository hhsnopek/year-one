$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'

class IntroView extends Marionette.ItemView
  id: 'intro'
  template: templates.intro

module.exports = IntroView
