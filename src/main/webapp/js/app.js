var app = angular.module("geektic", [ 'ngRoute', 'checklist-model' ]);

app.controller('HelloCtrl', function($scope, $http) {

	$scope.critere = {};

	$scope.searchByCriteria = function() {
		$http.post('/api/geek', $scope.critere).success(function(geeks) {
			$scope.geeks = geeks;
		})
	}

	$http.get('/api/geek/42').success(function(geek) {
		$scope.geek = geek;
	});

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