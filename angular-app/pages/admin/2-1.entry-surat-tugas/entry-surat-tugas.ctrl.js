(function() {
	'use strict';

	angular
		.module('app')
		.controller('entry-surat-tugas.ctrl', Controller);

	function Controller($scope, $rootScope, $state, $uibModal, abstractPage, helper, dataservice) {
		$rootScope.isGrey = false;
		var vm = this;
		var modalInstance;
		vm.listData = [];

		abstractPage.startCtrl().then(activate);
		function activate() {

			dataservice.getSPPD().then( afterGet );
			function afterGet( results ) {
				vm.listData = results;
				_.forEach( vm.listData, function( d ) {
					dataservice.getSPPDOfficer( d.id ).then( afterGetOfficer );
					function afterGetOfficer( officers ) {
						console.log(officers)
						d.officers = officers;
					}
				});
			}
		}
	}

})();