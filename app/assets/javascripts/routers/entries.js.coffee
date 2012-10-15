class Todo.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'
                
  initialize: ->
    @collection = new Todo.Collections.Entries()
    @collection.reset($('#container').data('entries'))

  index: ->
    view = new Todo.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"
