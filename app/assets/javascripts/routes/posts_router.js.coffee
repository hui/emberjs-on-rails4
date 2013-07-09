EmberjsOnRails4.PostsRoute = Ember.Route.extend
  model: ->
    EmberjsOnRails4.Post.find()
    
  setupController: (controller, model) ->
    controller.set('model', model)