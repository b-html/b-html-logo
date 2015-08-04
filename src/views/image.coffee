template = require '../templates/image'

module.exports =
  data: ->
    logo: null
  computed:
    alt: ->
      "#{@logo.width()}x#{@logo.height()}"
    src: ->
      @logo.dataUri()
  template: template
