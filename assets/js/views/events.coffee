$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'
Event = require './event'

class EventsView extends Marionette.CollectionView
  id: 'events-timeline'
  tagName: 'ul'
  childView: Event

  childViewOptions: (m, i) ->
    return {
      title: data.events[i].title
      date: data.events[i].date
      desc: data.events[i].desc
      img: data.events[i].img
      viewIndex: i
    }

  initialize: ->
    window.onload = ->
      $('#events-timeline:before').css 'height', $('main').height()

module.exports = EventsView
