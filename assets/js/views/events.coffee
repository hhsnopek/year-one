$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'

class EventsView extends Marionette.ItemView
  id: 'events'
  template: templates.events

module.exports = EventsView
