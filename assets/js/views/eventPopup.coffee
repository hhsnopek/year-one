$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'

class EventPopupView extends Marionette.ItemView
  className: 'eventPopup'
  template: => templates.eventPopup(@data)

  initialize: ->
    @data = data.events[@options.id]

module.exports = EventPopupView
