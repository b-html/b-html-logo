Datauri = require 'datauri'

class Logo
  constructor: ({ width, height, svg }) ->
    @_width = width
    @_height = height
    @_svg = svg

  dataUri: ->
    uri = new Datauri().format '.svg', @_svg
    uri.content # data:image/svg+xml;base64,...

  height: ->
    @_height

  svg: ->
    @_svg

  width: ->
    @_width

module.exports.Logo = Logo
