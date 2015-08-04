assert = require 'power-assert'
component = require '../../src/views/image'
template = require '../../src/templates/image'

describe 'Image', ->
  describe '#computed#alt', ->
    it 'works', ->
      alt = component.computed.alt
      context =
        logo:
          width: -> 100
          height: -> 200
      assert alt.apply(context, []) is '100x200'

  describe '#computed#src', ->
    it 'works', ->
      src = component.computed.src
      context =
        logo:
          dataUri: ->
            'data uri'
      assert src.apply(context, []) is 'data uri'

  describe '#data', ->
    it 'works', ->
      assert.deepEqual component.data(), logo: null

  describe '#template', ->
    it 'works', ->
      assert component.template is template