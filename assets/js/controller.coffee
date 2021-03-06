$ = require 'jquery'
_ = require 'underscore'
Backbone = require 'backbone'
Marionette = require 'backbone.marionette'
App = require './application'
IntroView = require './views/intro'
EventsHeaderView = require './views/eventsHeader'
EventsView = require './views/events'
EventView = require './views/event'
EventPopupView = require './views/eventPopup'
NotFoundView = require './views/notFound'

class Controller extends Marionette.Controller
  index: ->
    App.header.reset()
    App.main.reset()
    App.main.show(new IntroView)

  events: ->
    App.header.show(new EventsHeaderView)
    App.main.show(new EventsView(
      collection: new Backbone.Collection(data.events)
    ))

  event: (id) ->
    App.header.show(new EventsHeaderView)
    App.main.show(new EventPopupView(id: id))

  notFound: ->
    App.header.reset()
    App.main.show(new NotFoundView)

module.exports = Controller
