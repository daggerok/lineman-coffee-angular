angular.module('HttpProxyController', [])
  .controller 'HttpProxyController', [
    '$scope', '$http', ($scope, $http) ->
      $http.get('/api/name').success (data) ->
        $scope.HttpProxyModel = data.name

      $scope.hiMax = (name = $scope.HttpProxyModel) ->
        "hi, #{name}!"
  ]
