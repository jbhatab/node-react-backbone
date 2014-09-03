$ = require('jquery')
_ = require('underscore')
Backbone = require('backbone')
Post = require('../models/post')

# I used jsonplaceholder for fake api data but
# feel free to use any restful API
class Posts extends Backbone.Collection
  url: 'http://jsonplaceholder.typicode.com/posts'
  model: Post

module.exports = Posts
