(function() {
	'use strict';

	angular
		.module('app')
		.controller('entry-surat-perjalanan-dinas.ctrl', Controller);

	function Controller($q, $scope, $rootScope, $state, $uibModal, abstractPage, helper, dataservice) {
		$rootScope.isGrey = false;
		var vm = this;
		vm.listData = [];

		abstractPage.startCtrl().then(activate);
		function activate() {
			vm.search = '';
			dataservice.getEntrySuratPerjalananDinas().then( afterGetSPD )
			function afterGetSPD( results ) {
				vm.listData = results;
				_.forEach( vm.listData, function( d ) {
					dataservice.getSPPDOfficer( d.id ).then( afterGetSPPDOfficer );
					function afterGetSPPDOfficer( officers ) {
						d.officers = officers;
					}
				});
			}
		}
	}
})();