(function() {
	'use strict';

	angular
		.module('app')
		.controller('data-golongan.ctrl', Controller);

	function Controller($rootScope, $state, abstractPage) {
		$rootScope.isGrey = false;

		abstractPage.startCtrl().then(activate);
		function activate() {
			console.log('data-golongan.ctrl')
		}
	}

})();