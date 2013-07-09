EmberjsOnRails4.Router.map (match)->
  # match('/').to('index')
  @resource "posts", ->
    @route("new")
    @resource "post", path: ":post_id", ->
      @route("edit")