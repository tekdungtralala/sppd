(function() {
	'use strict';

	angular
		.module('app')
		.controller('data-jabatan.ctrl', Controller);

	function Controller($rootScope, $state, abstractPage) {
		$rootScope.isGrey = false;

		abstractPage.startCtrl().then(activate);
		function activate() {
			console.log('data-jabatan.ctrl');
		}
	}

})();