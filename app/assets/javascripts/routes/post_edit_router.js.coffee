EmberjsOnRails4.PostEditRoute = Ember.Route.extend
  setupController: (controller, model) ->    
    controller.set("content", @modelFor("post"))

  events:
    willTransition: ->
      if @modelFor("post").get("isDirty")
        @modelFor("post").rollback()