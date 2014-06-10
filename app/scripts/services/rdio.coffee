'use strict'

###*
 # @ngdoc service
 # @name angularMusicApp.Rdio
 # @description
 # # Rdio
 # Factory in the angularMusicApp.
###
angular.module('angularMusicApp')
  .factory 'Rdio', ->
    # Service logic
    # ...

    meaningOfLife = 42

    # Public API here
    {
      someMethod: ->
        meaningOfLife
    }
