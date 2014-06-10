'use strict'

###*
 # @ngdoc filter
 # @name angularMusicApp.filter:thousandsToK
 # @function
 # @description
 # # thousandsToK
 # Filter in the angularMusicApp.
###
angular.module('angularMusicApp')
  .filter 'thousandsToK', ->
    (value) ->
      0 if not value
      if value < 1000
        value
      else
        (value / 1000).toFixed(value % 1000 != 0) + 'k'
