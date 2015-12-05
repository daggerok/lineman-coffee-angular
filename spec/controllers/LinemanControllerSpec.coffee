describe 'LinemanController', ->

  beforeEach -> module 'controllers'

  beforeEach inject ($controller, $rootScope) ->
    @scope = $rootScope.$new()
    @scope.LinemanModel = 'World'
    $controller 'LinemanController', $scope: @scope

  describe 'greeting default', ->

    it 'says Hello, World!', ->
      expect(@scope.greeting()).toEqual('Hello, World!')

  describe 'greeting by argument param', ->

    it 'says Hello, Max!', ->
      expect(@scope.greeting('Max')).toEqual('Hello, Max!')