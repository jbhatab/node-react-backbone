$ = require('jquery')
_ = require('underscore')
Backbone = require('backbone')
React = require('react')
BackboneMixin = require('backbone-react-component')

{b, div, p}  = React.DOM


PostList = module.exports = React.createClass
  mixins: [BackboneMixin]
  createPost: (post)->
    div className: 'well', key: post.get('id'),
      b {}, post.get('title')
      p {}, post.get('body')

  render: ->
    console.log @props
    div {},
      @props.collection.map(@createPost)


