(function() {
	'use strict';

	angular
		.module('app')
		.controller('entry-surat-tugas.ctrl', Controller);

	function Controller($rootScope, $state, abstractPage) {
		$rootScope.isGrey = false;

		abstractPage.startCtrl().then(activate);
		function activate() {
			console.log('entry-surat-tugas.ctrl')
		}
	}

})();