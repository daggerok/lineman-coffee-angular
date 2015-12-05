describe 'LinemanController', ->

  beforeEach -> module 'LinemanController'

  beforeEach inject ($controller, $rootScope) ->
    @scope = $rootScope.$new()
    @scope.LinemanModel = 'World'
    @LinemanController = $controller 'LinemanController', $scope: @scope

  describe 'greeting default', ->

    it 'should says "Hello, World!"', ->
      expect(@scope.greeting()).toEqual('Hello, World!')

  describe 'greeting by argument param', ->

    it 'should says "Hello, Max!"', ->
      expect(@scope.greeting('Max')).toEqual('Hello, Max!')