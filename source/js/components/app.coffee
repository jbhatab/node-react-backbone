$ = require('jquery')
_ = require('underscore')
Backbone = require('backbone')
React = require('react')
ReactRouter = require('react-router-component')
PostIndexPage = require('./post-index-page')

Locations = ReactRouter.Locations
Location = ReactRouter.Location




App = module.exports = React.createClass
  render: ->
    Locations {},
      Location path: '/posts', handler: PostIndexPage
