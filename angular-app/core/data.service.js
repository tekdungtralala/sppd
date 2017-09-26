(function() {

	'use strict';

	angular
		.module( 'app' )
		.factory( 'dataservice' , DataService);

	function DataService($q, $http, $state, $stateParams) {
		var service = {
			getJabatan: getJabatan,
			createJabatan: createJabatan,
			editJabatan: editJabatan,
			removeJabatan: removeJabatan
		};
		return service;

		function getJabatan() {
			return $http.get( 'api/jabatan/get.php' ).then( afterGet );
		}
		function createJabatan( data ) {
			return $http.post( 'api/jabatan/post.php', data );
		}
		function editJabatan( data ) {
			return $http.put( 'api/jabatan/put.php', data );
		}
		function removeJabatan( id ) {
			return $http.put( 'api/jabatan/delete.php?id=' + id);
		}

		function afterGet( response ) {
			return response.data;
		}
	}

})();