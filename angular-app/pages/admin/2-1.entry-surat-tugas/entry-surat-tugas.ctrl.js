(function() {
	'use strict';

	angular
		.module('app')
		.controller('entry-surat-tugas.ctrl', Controller);

	function Controller($q, $scope, $rootScope, $state, $uibModal, abstractPage, helper, dataservice) {
		$rootScope.isGrey = false;
		var vm = this;
		var modalInstance;
		vm.listData = [];
		vm.provinces = [];
		var cities = [];
		vm.cities = [];
		var officers = [];
		var currentSPPDNumber;
		var chiefName;

		abstractPage.startCtrl().then(activate);
		function activate() {
			dataservice.getSPPD().then( afterGet );
			function afterGet( results ) {
				vm.listData = results;
				_.forEach( vm.listData, function( d ) {
					dataservice.getSPPDOfficer( d.id ).then( afterGetSPPDOfficer );
					function afterGetSPPDOfficer( officers ) {
						d.officers = officers;
					}
				});
			}

			var promises = [
				dataservice.getProvinsi(),		// 0
				dataservice.getKota(),			// 1
				dataservice.getPegawai(),		// 2
				dataservice.getJabatan(),		// 3
				dataservice.getGolongan(),		// 4
				dataservice.countSPPD(),		// 5
			];

			$q.all( promises ).then( afterGetPromises );
			function afterGetPromises( responses ) {
				vm.provinces = responses[0];
				cities = responses[1];

				officers = responses[2];
				var officePosition = responses[3];
				var officeClass = responses[4];

				_.forEach( officers, function( o ) {
					var p = _.find( officePosition, function(p) {
						return p.id === o.office_position_id;
					});
					o.officePosition = p;

					var c = _.find( officeClass, function(c) {
						return c.id === o.office_class_id;
					});
					o.officeClass = c;

					if ( p.name === 'Kepala Balai Teknologi' ) {
						chiefName = o.name;
					}
				});

				currentSPPDNumber = parseInt(responses[5]);
			}
		}

		vm.orderBy = '+id';
		vm.toggleSort = toggleSort;
		function toggleSort(value) {
			vm.orderBy = ( vm.orderBy !== ( '+' + value ) ) ? ( '+' + value ) : ( '-' + value );
		}


		vm.openModal = openModal;
		vm.submit = submit;
		vm.remove = remove;
		vm.closeModal = closeModal;
		vm.provinceChanged = provinceChanged;
		vm.addOfficerToSPPD = addOfficerToSPPD;
		vm.removeOfficerFromSPPD = removeOfficerFromSPPD;
		var modalInstance;
		vm.formValue;
		vm.hasError;
		function openModal( data, templateUrl ) {
			vm.hasError = {};

			if ( data ) {
				vm.formValue = angular.copy(data);
			} else {
				vm.formValue = {
					officers: [],
					listOfficers: officers, 
					reference_number: currentSPPDNumber + '.a/BTPAL/ST/10/2017',
					chief_name: chiefName,
					// base: 'base....',
					// task: 'task ....',
					// description: 'description....'
				};
			}

			modalInstance = $uibModal.open({
				templateUrl: templateUrl,
				size: 'md',
				backdrop: 'static',
				scope: $scope
			});
		}
		function submit() {
			vm.hasError = {};

			if ( !vm.formValue.base ) vm.hasError['base'] = true;
			if ( !vm.formValue.task ) vm.hasError['task'] = true;
			if ( !vm.formValue.start_date ) vm.hasError['start_date'] = true;
			if ( !vm.formValue.end_date ) vm.hasError['end_date'] = true;
			if ( !vm.formValue.objective ) vm.hasError['objective'] = true;
			if ( !vm.formValue.description ) vm.hasError['description'] = true;
			if ( vm.formValue.officers.length === 0 ) vm.hasError['officers'] = true;

			if (Object.keys(vm.hasError).length > 0) {
				helper.setFocus(Object.keys(vm.hasError)[0]);
			} else {
				console.log('else')
				if ( vm.formValue.id ) {
					// dataservice.editJabatan( vm.formValue ).then( closeModal ).then( activate );
				} else {
					vm.formValue.start_date = moment(vm.formValue.start_date).format('YYYY-MM-DD'),
					vm.formValue.end_date = moment(vm.formValue.end_date).format('YYYY-MM-DD'),
					dataservice.createSPPD( vm.formValue ).then( closeModal ).then( activate );
				}
			}
		}
		function remove() {
			dataservice.removeSPPD(vm.formValue.id).then(closeModal).then(activate);
		}
		function closeModal() {
			if (modalInstance && modalInstance.dismiss) modalInstance.dismiss();
		}
		function provinceChanged() {
			vm.formValue.showCities = vm.formValue.province_id != null;
			vm.formValue.objective = null;

			vm.cities = [];
			_.forEach( cities, function( c ) {
				if ( c.province_id === vm.formValue.province_id ) {
					vm.cities.push( c );
				}
			})
		}
		function addOfficerToSPPD() {
			vm.hasError['officers'] = false;
			if ( !vm.formValue.officeIdTemp ) {
				vm.hasError['officers'] = true;
				return;
			}

			var officer = _.remove( vm.formValue.listOfficers, function( o ) {
				return o.id === vm.formValue.officeIdTemp;
			})[0];
			officer.nameAndOfficeId = officer.name + ' - ' + officer.officer_id;
			vm.formValue.officers.push( officer );
		}
		function removeOfficerFromSPPD( oInput ) {
			var officer = _.remove( vm.formValue.officers, function( o ) {
				return o.id === oInput.id;
			})[0];
			vm.formValue.listOfficers.push( officer );
		}
	}

})();