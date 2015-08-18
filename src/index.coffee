Vue = require 'vue'
{Logo} = require './models/logo'
canvasView = require './views/canvas'
imageView = require './views/image'
appTemplate = require './templates/app'
logoRectangle = require './templates/logo-rectangle'
logoSquare = require './templates/logo-square'

new Vue(
  el: '#app'
  data:
    logoWebsite: new Logo(width: 600, height: 300, svg: logoRectangle)
    logoRectangle: new Logo(width: 200, height: 100, svg: logoRectangle)
    logoSquare: new Logo(width: 100, height: 100, svg: logoSquare)
  template: appTemplate
  components:
    'l-canvas': canvasView
    'l-image': imageView
)
