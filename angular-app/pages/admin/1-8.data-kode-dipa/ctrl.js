(function() {
	'use strict';

	angular
		.module('app')
		.controller('data-kode-dipa.ctrl', Controller);

	function Controller($scope, $rootScope, $state, $uibModal, abstractPage, helper, dataservice) {
		var vm = this;
		vm.listData = [];

		abstractPage.startCtrl().then( activate );
		function activate() {

		}
	}

})();
