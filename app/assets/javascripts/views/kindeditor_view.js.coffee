EmberjsOnRails4.KindeditorView = Ember.TextArea.extend
  didInsertElement: ->
    @set "editor", KindEditor.create @get("element"), basePath: '/kindeditor/', minWidth: '420', afterChange: () =>
      @set("value", @get("editor").html()) if @get("editor")

  willDestroyElement: ->
    @get("editor").remove()