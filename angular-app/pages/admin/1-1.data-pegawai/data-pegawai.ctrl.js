(function() {
	'use strict';

	angular
		.module('app')
		.controller('data-pegawai.ctrl', Controller);

	function Controller($rootScope, $state, abstractPage) {
		$rootScope.isGrey = false;

		abstractPage.startCtrl().then(activate);
		function activate() {
			console.log('data-pegawai.ctrl')
		}
	}

})();