$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'

class EventPopupView extends Marionette.ItemView
  className: 'eventPopup'
  template: => templates.eventPopup(@data)

  initialize: ->
    @data = data.events[@options.id]

  onRender: ->
    if window.innerWidth > 800
      flyoutStyle = 'bottom right'
    else
      flyoutStyle = 'top'
    config = {
      ui:
        flyout: flyoutStyle
      title: 'Year One'
      description: 'My first of many years with Shayla'
      image: "#{$('img').src}"
    }
    window.setTimeout( ->
      new Share '.share-button', config
    , 100)

module.exports = EventPopupView
