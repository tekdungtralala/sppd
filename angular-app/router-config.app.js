
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
				.state('admin.data-pegawai', {
					url: '/data-pegawai',
					templateUrl: 'angular-app/pages/admin/1-1.data-pegawai/data-pegawai.html?version=' + window.version,
					controller: 'data-pegawai.ctrl',
					controllerAs: 'vm',
					isSecure: true
				})
				.state('admin.data-jabatan', {
					url: '/data-jabatan',
					templateUrl: 'angular-app/pages/admin/1-2.data-jabatan/data-jabatan.html?version=' + window.version,
					controller: 'data-jabatan.ctrl',
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