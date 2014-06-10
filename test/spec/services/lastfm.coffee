'use strict'

describe 'Service: LastFm', ->

  # load the service's module
  beforeEach module 'angularMusicApp'

  # instantiate service
  LastFm = {}
  beforeEach inject (_LastFm_) ->
    LastFm = _LastFm_

  it 'should do something', ->
    expect(!!LastFm).toBe true
