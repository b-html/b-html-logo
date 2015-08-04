class Logo
  constructor: ({ width, height, svg }) ->
    @_width = width
    @_height = height
    @_svg = svg

  height: ->
    @_height

  svg: ->
    @_svg

  width: ->
    @_width

module.exports.Logo = Logo
