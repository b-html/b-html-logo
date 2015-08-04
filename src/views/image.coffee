template = require '../templates/image'

module.exports =
  props: ['logo']
  computed:
    alt: ->
      "#{@logo.width()}x#{@logo.height()}"
    src: ->
      @logo.dataUri()
  template: template
