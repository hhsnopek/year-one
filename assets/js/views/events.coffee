$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'
Event = require './event'

class EventsView extends Marionette.CollectionView
  childView: Event
  id: 'events-timeline'
  tagName: 'ul'

  childViewOptions: ->
    data: data.events[@options.id+1]

module.exports = EventsView
