$ = require 'jquery'
Marionette = require 'backbone.marionette'
App = require '../application'

class IntroView extends Marionette.ItemView
  id: 'intro'
  template: templates.intro

  onRender: ->
    @onAnimationEnd()

  onAnimationEnd: ->
    element = @el
    element.addEventListener "webkitAnimationEnd", AnimationListener, false
    element.addEventListener "mozAnimationEnd", AnimationListener, false
    element.addEventListener "MSAnimationEnd", AnimationListener, false
    element.addEventListener "oAnimationEnd", AnimationListener, false
    element.addEventListener "animationend", AnimationListener, false

  AnimationListener = (e) ->
    if e.animationName is "fadeInOutDone" and e.type.toLowerCase().indexOf("animationend") >= 0
      App.request('router').navigate("/events", { trigger: true })

module.exports = IntroView
