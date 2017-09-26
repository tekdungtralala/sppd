(function() {

	'use strict';

	angular
		.module( 'app' )
		.factory( 'dataservice' , DataService);

	function DataService($q, $http, $state, $stateParams) {
		var service = {
			getDataJabatan: getDataJabatan
		};
		return service;

		function getDataJabatan() {
			return $http.get( 'api/jabatan/get.php' ).then( afterGet );
		}

		function afterGet( response ) {
			return response.data;
		}
	}

})();