class Todo.Views.Entry extends Backbone.View
  template: JST['entries/entry']
  tagName: 'li'

  events:
    'click': 'completeEntry'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('highlight', @highlightCompleted, this)

  #showEntry: ->
    #Backbone.history.navigate("entries/#{@model.get('id')}", true)

  completeEntry: ->
    @model.done()

  highlightCompleted: ->
    $('.completed').removeClass('highlight')
    @$('.completed').addClass('highlight')

  render: ->
    $(@el).html(@template(entry: @model))
    this
