$ = require 'jquery'
Backbone = require 'backbone'
Backbone.$ = $
Marionette = require 'backbone.marionette'
Marionette.$ = $
Router = require './router'
Controller = require './controller'
App = require './application'

App.on 'start', ->
  router = new Router(controller: new Controller)
  App.reqres.setHandler('router', -> router)
  Backbone.history.start(pushState: true)

App.start()
