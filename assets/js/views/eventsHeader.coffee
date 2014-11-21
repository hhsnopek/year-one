$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'

class EventsHeaderView extends Marionette.ItemView
  id: 'header'
  template: templates.eventsHeader

module.exports = EventsHeaderView
