Marionette = require 'backbone.marionette'

class Router extends Marionette.AppRouter
  appRoutes:
    "": "index" # /
    "events": "events" # /events
    "events/:id": "event" # /events/1
    "*notFound": "notFound" # /404

module.exports = Router
