(function() {
	'use strict';

	angular
		.module('app')
		.controller('data-jabatan.ctrl', Controller);

	function Controller($rootScope, $state, abstractPage, dataservice) {
		$rootScope.isGrey = false;
		var vm = this;
		vm.listData = [];

		abstractPage.startCtrl().then( activate );
		function activate() {
			dataservice.getDataJabatan().then( afterGetData );
			function afterGetData( results ) {
				vm.listData = results;
				console.log(_)
			}
		}
	}

})();