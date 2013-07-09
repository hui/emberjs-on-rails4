EmberjsOnRails4.PostEditController = Ember.ObjectController.extend
  update: ->
    @content.save().then () =>
      @transitionToRoute("posts")
    , (reason) =>
      @set("errorMessage", reason.errors)