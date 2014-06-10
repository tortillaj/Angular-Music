'use strict'

describe 'Filter: thousandsToK', ->

  # load the filter's module
  beforeEach module 'angularMusicApp'

  # initialize a new instance of the filter before each test
  thousandsToK = {}
  beforeEach inject ($filter) ->
    thousandsToK = $filter 'thousandsToK'

  it 'should return the input prefixed with "thousandsToK filter:"', ->
    text = 'angularjs'
    expect(thousandsToK text).toBe ('thousandsToK filter: ' + text)
