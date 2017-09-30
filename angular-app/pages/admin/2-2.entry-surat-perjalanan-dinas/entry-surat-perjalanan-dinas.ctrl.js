(function() {
	'use strict';

	angular
		.module('app')
		.controller('entry-surat-perjalanan-dinas.ctrl', Controller);

	function Controller($q, $scope, $rootScope, $state, $uibModal, abstractPage, helper, dataservice) {
		$rootScope.isGrey = false;
		var vm = this;
		vm.listData = [];
		vm.listTransportType;
		vm.listBudgetType;
		vm.listSubBudget;

		abstractPage.startCtrl().then(activate);
		function activate() {
			vm.search = '';
			dataservice.getEntrySuratPerjalananDinas().then( afterGetSPD )
			function afterGetSPD( results ) {
				vm.listData = results;
				_.forEach( vm.listData, function( d ) {
					dataservice.getSPPDOfficer( d.id ).then( afterGetSPPDOfficer );
					function afterGetSPPDOfficer( officers ) {
						d.officers = officers;
					}
				});
			}

			dataservice.getMataAnggaran().then( afterGetMataAnggaran );
			function afterGetMataAnggaran( results ) {
				console.log( results );
				vm.listBudgetType = [];
				_.forEach( results, function( r ) {
					var finded = _.find( vm.listBudgetType, function( f ) {
						return f.name === r.name;
					});

					if ( finded ) {
						finded.subBudgets.push( r. sub_budget );
					} else {
						vm.listBudgetType.push({
							name: r.name,
							subBudgets: [r.sub_budget]
						});
					}
				});
			}

			dataservice.getAngkutan().then( afterGetAnggukatn );
			function afterGetAnggukatn( results ) {
				vm.listTransportType = results;
			}
		}

		vm.openModal = openModal;
		vm.submit = submit;
		vm.remove = remove;
		vm.closeModal = closeModal;
		vm.columnEChanged = columnEChanged;
		vm.printLembar2 = printLembar2;
		var modalInstance;
		vm.formValue;
		vm.hasError;
		function openModal( data, templateUrl, size ) {
			if ( data ) {
				vm.formValue = angular.copy(data);
				_.forEach( vm.formValue.officers, function( p ) {
					p.nameTemp = p.reference_number + ', ' + p.name + ' / ' + p.officer_id + ' / ' + p.office_class_name + ' / ' + p.office_position_name ;
				});
				vm.formValue.totalDayTemp = vm.formValue.total_day + ' hari';
				columnEChanged();

				vm.formValue.showPrintBtn = vm.formValue.column_e && vm.formValue.column_f && vm.formValue.transportation_type;
			} else vm.formValue = {};

			modalInstance = $uibModal.open({
				templateUrl: templateUrl,
				size: size ? size : 'md',
				backdrop: 'static',
				scope: $scope
			});
		}
		function submit() {
			vm.hasError = {};

			if ( !vm.formValue.transportation_type ) vm.hasError['transportation_type'] = true;
			if ( !vm.formValue.column_e ) vm.hasError['column_e'] = true;
			if ( !vm.formValue.column_f ) vm.hasError['column_f'] = true;

			if (Object.keys(vm.hasError).length > 0) {
				helper.setFocus(Object.keys(vm.hasError)[0]);
			} else {
				var data = {
					id: vm.formValue.id,
					transportation_type: vm.formValue.transportation_type,
					column_e: vm.formValue.column_e,
					column_f: vm.formValue.column_f
				};
				dataservice.updateSPD( data ).then( closeModal ).then( activate );
			}
		}
		function remove() {
			dataservice.removeSPPD(vm.formValue.id).then(closeModal).then(activate);
		}
		function closeModal() {
			if (modalInstance && modalInstance.dismiss) modalInstance.dismiss();
		}
		function columnEChanged() {
			var budget = _.find( vm.listBudgetType , function( b ) {
				return vm.formValue.column_e === b.name;
			});
			if ( budget ) {
				vm.listSubBudget = budget.subBudgets;
				vm.formValue.showColumnF = true;
			}
		}
		function printLembar2( data ) {
			console.log('printLembar2 : ', data);
		}
	}
})();