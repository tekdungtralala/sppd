(function() {
	'use strict';

	angular
		.module('app')
		.controller('laporan-pegawai-sppd.ctrl', Controller);

	function Controller($rootScope, $state, abstractPage) {
		$rootScope.isGrey = false;

		abstractPage.startCtrl().then(activate);
		function activate() {
			console.log('laporan-pegawai-sppd.ctrl')
		}
	}

})();