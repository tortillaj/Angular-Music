'use strict'

describe 'Service: Rdio', ->

  # load the service's module
  beforeEach module 'angularMusicApp'

  # instantiate service
  Rdio = {}
  beforeEach inject (_Rdio_) ->
    Rdio = _Rdio_

  it 'should do something', ->
    expect(!!Rdio).toBe true
