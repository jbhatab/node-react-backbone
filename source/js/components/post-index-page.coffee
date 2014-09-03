$ = require('jquery')
_ = require('underscore')
Backbone = require('backbone')
React = require('react')
PostList = require('./post-list')
Posts = require('../collections/posts')

{div}  = React.DOM
Backbone.$ = $

PostIndexPage = module.exports = React.createClass
  getPostList: ->
    posts = new Posts
    posts.fetch().done ->
      console.log posts
      return PostList(collection: posts)
    console.log 'WHAT'
    
    # return PostList(collection: posts)

  render: ->
    div {},
      @getPostList()
    # posts = new Posts
    # console.log posts
    
    # posts.fetch().done ->
    #   console.log posts
    # console.log 'completed fetch'
    # console.log posts
    # div {},
    #   PostList(collection: posts)
