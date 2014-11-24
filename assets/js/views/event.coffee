$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'

class EventView extends Marionette.ItemView
  tagName: 'li'
  className: 'event'
  template: templates.event

  templateHelpers: -> viewIndex: this.options.viewIndex

module.exports = EventView
