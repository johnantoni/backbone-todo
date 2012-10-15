window.Todo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Todo.Routers.Entries()
    Backbone.history.start(pushState: true)

$(document).ready ->
  Todo.init()
