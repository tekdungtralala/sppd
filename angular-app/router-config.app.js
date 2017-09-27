
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

				.state('admin.data-jabatan', {
					url: '/data-jabatan',
					templateUrl: 'angular-app/pages/admin/1-1.data-jabatan/data-jabatan.html?version=' + window.version,
					controller: 'data-jabatan.ctrl',
					controllerAs: 'vm',
					treeViewActive: 'Master',
					titlePage: 'Data Jabatan',
					isSecure: true
				})

				.state('admin.data-golongan', {
					url: '/data-golongan',
					templateUrl: 'angular-app/pages/admin/1-2.data-golongan/data-golongan.html?version=' + window.version,
					controller: 'data-golongan.ctrl',
					controllerAs: 'vm',
					treeViewActive: 'Master',
					titlePage: 'Data Golongan',
					isSecure: true
				})

				.state('admin.data-pegawai', {
					url: '/data-pegawai',
					templateUrl: 'angular-app/pages/admin/1-3.data-pegawai/data-pegawai.html?version=' + window.version,
					controller: 'data-pegawai.ctrl',
					controllerAs: 'vm',
					treeViewActive: 'Master',
					titlePage: 'Data Pegawai',
					isSecure: true
				})

				.state('admin.entry-surat-tugas', {
					url: '/entry-surat-tugas',
					templateUrl: 'angular-app/pages/admin/2-1.entry-surat-tugas/entry-surat-tugas.html?version=' + window.version,
					controller: 'entry-surat-tugas.ctrl',
					controllerAs: 'vm',
					treeViewActive: 'Transaksi',
					titlePage: 'Entry Surat Tugas',
					isSecure: true
				})

				.state('admin.laporan-pegawai-sppd', {
					url: '/laporan-pegawai-sppd',
					templateUrl: 'angular-app/pages/admin/3-1.laporan-pegawai-sppd/laporan-pegawai-sppd.html?version=' + window.version,
					controller: 'laporan-pegawai-sppd.ctrl',
					controllerAs: 'vm',
					treeViewActive: 'Laporan',
					titlePage: 'Laporan Pegawai SPPD',
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