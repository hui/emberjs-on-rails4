EmberjsOnRails4.KindeditorView = Ember.TextArea.extend
  valueChanged: (->
    @get("editor").html(@get("value")) if @get("editor").html() != @get("value")
  ).observes("value")

  didInsertElement: ->
    @set "editor", KindEditor.create @get("element"), basePath: '/kindeditor/', minWidth: '420', afterChange: () =>
      @set("value", @get("editor").html()) if @get("editor")

  willDestroyElement: ->
    @get("editor").remove()