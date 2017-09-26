(function() {
	'use strict';

	angular
		.module('app')
		.controller('AdminCtrl', AdminCtrl);

	function AdminCtrl($rootScope, $state, abstractPage) {
		$rootScope.isGrey = false;
		var vm = this;
		
		vm.logout = logout;
		vm.toState = toState;

		abstractPage.startCtrl().then(activate);
		function activate() {
			if ( $state.current.name === 'admin' ) toState('data-pegawai');
		}

		function logout() {
			$state.go('login');
			return;
			dataservice.logout().then(function() {
				appData.setLoggedUser(null);
				$state.go('login');
			});
			
		}

		function toState( targetState ) {
			$state.go('admin.' + targetState);
		}
	}

})();