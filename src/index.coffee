Vue = require 'vue'
{Logo} = require './models/logo'
imageView = require './views/image'
appTemplate = require './templates/app'
logoRectangle = require './templates/logo-rectangle'
logoSquare = require './templates/logo-square'

new Vue(
  el: '#app'
  data:
    logoRectangle: new Logo(width: 200, height: 100, svg: logoRectangle)
    # original size : 200x200
    logoSquare: new Logo(width: 100, height: 100, svg: logoSquare)
  template: appTemplate
  components:
    'l-image': imageView
)
