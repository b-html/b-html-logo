Vue = require 'vue'
{Logo} = require './models/logo'
imageView = require './views/image'
appTemplate = require './templates/app'
logoRectangle = require './templates/logo-rectangle'

new Vue(
  el: '#app'
  data:
    logo: new Logo(width: 200, height: 100, svg: logoRectangle)
    message: 'Hello, Vue.js'
  template: appTemplate
  components:
    'l-image': imageView
)
