(function() {
	'use strict';

	angular
		.module('app')
		.controller('AdminCtrl', AdminCtrl);

	function AdminCtrl($state, abstractPage) {
		var vm = this;
		vm.stateActive = $state.current.name;
		

		vm.logout = logout;
		vm.toState = toState;

		abstractPage.startCtrl();

		function logout() {
			dataservice.logout().then(function() {
				appData.setLoggedUser(null);
				$state.go('login');
			});
			
		}

		function toState( targetState ) {
			console.log('toState : ', targetState);
			vm.stateActive = targetState;
			// $state.go(targetState);
		}
	}

})();