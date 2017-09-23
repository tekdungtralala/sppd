
(function() {
	'use strict';

	angular.module('app').config(routerConfig);

	function routerConfig($stateProvider) {
		$stateProvider
			.state('admin', {
				url: '/admin',
				templateUrl: 'angular-app/pages/admin/admin.html?version=' + window.version,
				controller: 'AdminCtrl',
				controllerAs: 'vm',
				isSecure: true
			})
			.state('login', {
				url: '/',
				templateUrl: 'angular-app/pages/login/login.html?version=' + window.version,
				controller: 'LoginCtrl',
				controllerAs: 'vm',
				isSecure: false
			})
	};

})();