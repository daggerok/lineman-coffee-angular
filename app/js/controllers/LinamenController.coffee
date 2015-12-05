angular.module('LinemanController', [])
  .controller 'LinemanController', [
    '$scope', ($scope) ->
      $scope.greeting = (name = $scope.LinemanModel) ->
        "Hello, #{name}!"
  ]