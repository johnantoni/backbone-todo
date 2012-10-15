class Todo.Models.Entry extends Backbone.Model

  done: ->
    if @get("completed")
      @set(completed: false)
    else
      @set(completed: true)

    @save()
    @trigger('highlight')
