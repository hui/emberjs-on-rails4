EmberjsOnRails4.PostsNewRoute = Ember.Route.extend
  model: ->
    EmberjsOnRails4.Post.createRecord()

  setupController: (controller, model) ->
    controller.set("content", model)