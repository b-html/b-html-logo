module.exports =
  data: ->
    logo: null
  computed:
    alt: ->
      "#{@logo.width()}x#{@logo.height()}"
    src: ->
      @logo.dataUri()
