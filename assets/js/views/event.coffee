$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'

# todo pass data ie photo href & description/title
class EventView extends Marionette.ItemView
  className: 'eventPopup'
  template: => templates.eventPopup(data: @data)

  # verify roots-yaml completion
  initialize: ->
    @data = data[@options.id]

module.exports = EventView
