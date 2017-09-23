
(function() {
	'use strict';
	var app = angular.module('app');
	app.run(appRun);
	function appRun($rootScope, $transitions) {
		$transitions.onSuccess({}, function() {
			// console.log("statechange success");
		});
	}

	app.config(['$qProvider', function ($qProvider) {
		$qProvider.errorOnUnhandledRejections(false);
	}]);

})();