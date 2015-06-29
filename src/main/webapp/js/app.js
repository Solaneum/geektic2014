var app = angular.module("geektic", [ 'ngRoute', 'checklist-model' ]);

app.config([ '$routeProvider', function($routeProvider) {
	$routeProvider.when('/', {
		templateUrl : 'vues/recherche.html',
		controller : 'geekticCtrl'
	}).when('/geek/:geekId', {
		templateUrl : 'vues/oneGeek.html',
		controller : 'detailCtrl'
	}).otherwise({
		redirectTo : '/'
	});
} ]);

app.controller('geekticCtrl', function($scope, $http, $location) {

	$scope.critere = {};
	
	$scope.displayGeek = function(id) {
		$location.path("/geek/" + id);
	}

	$scope.searchByCriteria = function() {
		$http.post('/api/geek', $scope.critere).success(function(geeks) {
			$scope.geeks = geeks;
		})
	}
	
	$http.get('/api/geek').success(function(geeks) {
		$scope.geeks = geeks;
	});

	$http.get('/api/geek/param/sexe').success(function(sexes) {
		$scope.sexes = sexes;
	});

	$http.get('/api/geek/param/interets').success(function(interets) {
		$scope.Centres = interets;
	});

});

app.controller('detailCtrl', function($scope, $http, $routeParams) {

	$scope.id = $routeParams.geekId;
	$scope.geek = {}

	$http.get('/api/geek/'+$scope.id).success(function(geek) {
		$scope.geek = geek;
	});

});