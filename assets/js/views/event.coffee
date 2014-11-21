$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'

# todo pass data ie photo href & description/title
class EventView extends Marionette.ItemView
  tagName: 'li'
  className: 'event'
  template: templates.event

  initialize: ->
    @data = data.events[@options.id]

module.exports = EventView
