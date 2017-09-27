(function() {

	'use strict';

	angular
		.module( 'app' )
		.factory( 'dataservice' , DataService);

	function DataService($q, $http, $state, $stateParams) {
		var service = {
			login: login,
			logout: logout,
			hasLoggedUser: hasLoggedUser,

			getJabatan: getJabatan,
			createJabatan: createJabatan,
			editJabatan: editJabatan,
			removeJabatan: removeJabatan
		};
		return service;

		function login(data) { return $http.post( 'api/login/login.php' , data); }
		function logout() { return $http.get( 'api/login/logout.php' ); }
		function hasLoggedUser() { return $http.get( 'api/login/check_user.php' ); }


		function getJabatan() { return $http.get( 'api/jabatan/get.php' ).then( afterGet ); }
		function createJabatan( data ) { return $http.post( 'api/jabatan/post.php', data ); }
		function editJabatan( data ) { return $http.put( 'api/jabatan/put.php', data ); }
		function removeJabatan( id ) { return $http.delete( 'api/jabatan/delete.php?id=' + id); }

		function afterGet( response ) { return response.data; }
	}

})();