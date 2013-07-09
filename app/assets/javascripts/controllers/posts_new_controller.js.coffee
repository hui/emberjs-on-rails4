EmberjsOnRails4.PostsNewController = Ember.ObjectController.extend
  create: ->
    @content.save().then () =>
      @transitionToRoute("posts.index")
    , (reason) =>
      @set("errorMessage", reason.errors)