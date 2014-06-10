'use strict'

###*
 # @ngdoc service
 # @name angularMusicApp.LastFm
 # @description
 # # LastFm
 # Factory in the angularMusicApp.
###
angular.module('angularMusicApp')
  .factory 'LastFm', ['$http', '$q', 'Globals', ($http, $q, Globals) ->

    findUser: (username) ->
      deferred = $q.defer()

      $http.get(Globals.lastfmEndpoint + '?method=user.getInfo&user=' + username + '&format=json&api_key=' + Globals.lastfmApiKey,
        cache: true
      ).success (data) ->
        deferred.resolve data

      deferred.promise

    getTopAlbums: (username) ->
      deferred = $q.defer()

      $http.get(Globals.lastfmEndpoint + '?method=user.gettopalbums&user=' + username + '&format=json&api_key=' + Globals.lastfmApiKey,
        cache: true
      ).success (data) ->
        deferred.resolve data

      deferred.promise

  ]