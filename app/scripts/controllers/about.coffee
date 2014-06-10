'use strict'

###*
 # @ngdoc function
 # @name angularMusicApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the angularMusicApp
###
angular.module('angularMusicApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
