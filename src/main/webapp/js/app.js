var app = angular.module("geektic", [ 'ngRoute', 'checklist-model' ]);

// Config pour changer l'intérieur de la vue en SPA
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

	// L'objet qui stocke les choix de l'user
	$scope.critere = {};
	
	// Permet de charger l'affichage d'un geek en particulier
	$scope.displayGeek = function(id) {
		$location.path("/geek/" + id);
	}

	// Recherche par critère
	$scope.searchByCriteria = function() {
		$http.post('/api/geek', $scope.critere).success(function(geeks) {
			$scope.geeks = geeks;
		})
	}
	
	// Récupère tous les geeks pour le premier affichage
	$http.get('/api/geek').success(function(geeks) {
		$scope.geeks = geeks;
	});

	// Récupère les sexes pour alimenter la liste déroulante
	$http.get('/api/geek/param/sexe').success(function(sexes) {
		$scope.sexes = sexes;
	});

	// Récupère les intérêts pour créer les checkbox
	$http.get('/api/geek/param/interets').success(function(interets) {
		$scope.Centres = interets;
	});

});

app.controller('detailCtrl', function($scope, $http, $routeParams) {

	// Récupère l'ID dans l'url
	$scope.id = $routeParams.geekId;
	$scope.geek = {}

	// Récupère le geek par son ID
	$http.get('/api/geek/'+$scope.id).success(function(geek) {
		$scope.geek = geek;
	});

});