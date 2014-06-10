'use strict'

###*
 # @ngdoc function
 # @name angularMusicApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the angularMusicApp
###
angular.module('angularMusicApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
