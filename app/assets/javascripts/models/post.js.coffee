EmberjsOnRails4.Post = DS.Model.extend
  title: DS.attr('string')
  body: DS.attr('string')
  created_at: DS.attr('date')

  invalid: Ember.computed ->
    !@get("title")? or !@get("body")? or @get("title") == '' or @get("body") == ''
  .property("title", "body")

  notDirty: Ember.computed ->
    !@get("isDirty")
  .property("title", "body")