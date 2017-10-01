<!DOCTYPE html>
<html ng-app="app" ng-class="{'body-grey': isGrey}">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>AdminLTE</title>

	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
	<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	<link rel="stylesheet" href="angular-app/app.css?version=<?php echo(rand()); ?>">

	<script src="bower_components/jquery/dist/jquery.min.js?version=<?php echo(rand()); ?>"></script>
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js?version=<?php echo(rand()); ?>"></script>
	<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js?version=<?php echo(rand()); ?>"></script>
	<script src="bower_components/fastclick/lib/fastclick.js?version=<?php echo(rand()); ?>"></script>
	<script src="bower_components/lodash/dist/lodash.min.js?version=<?php echo(rand()); ?>"></script>
	<script src="bower_components/moment/min/moment.min.js?version=<?php echo(rand()); ?>"></script>
	<script src="bower_components/terbilang-js/terbilang.min.js?version=<?php echo(rand()); ?>"></script>

	<script src="bower_components/angular/angular.min.js?version=<?php echo(rand()); ?>"></script>
	<script src="bower_components/angular-ui-router/release/angular-ui-router.min.js?version=<?php echo(rand()); ?>"></script>
	<script src="bower_components/angular-bootstrap/ui-bootstrap-tpls.min.js?version=<?php echo(rand()); ?>"></script>

	<script src="angular-app/init.app.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/main-config.app.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/router-config.app.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/run.app.js?version=<?php echo(rand()); ?>"></script>

	<script src="angular-app/core/data.service.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/core/helper.service.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/core/appdata.service.js?version=<?php echo(rand()); ?>"></script>

	<script src="angular-app/pages/abstract.page.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/admin/admin.ctrl.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/login/login.ctrl.js?version=<?php echo(rand()); ?>"></script>

	<script src="angular-app/pages/admin/1-1.data-jabatan/data-jabatan.ctrl.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/admin/1-2.data-golongan/data-golongan.ctlr.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/admin/1-3.data-pegawai/data-pegawai.ctrl.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/admin/1-4.data-provinsi/data-provinsi.ctrl.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/admin/1-5.data-angkutan/data-angkutan.ctrl.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/admin/1-6.data-mata-anggaran/data-mata-anggaran.ctrl.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/admin/1-7.data-biaya-perjalanan-dinas/data-biaya-perjalanan-dinas.ctrl.js?version=<?php echo(rand()); ?>"></script>

	<script src="angular-app/pages/admin/2-1.entry-surat-tugas/entry-surat-tugas.ctrl.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/admin/2-2.entry-surat-perjalanan-dinas/entry-surat-perjalanan-dinas.ctrl.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/admin/2-3.entry-biaya-dinas/entry-biaya-dinas.ctrl.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/admin/2-4.entry-bukti-kas/entry-bukti-kas.ctrl.js?version=<?php echo(rand()); ?>"></script>
	<script src="angular-app/pages/admin/2-5.entry-hasil-dinas/entry-hasil-dinas.ctrl.js?version=<?php echo(rand()); ?>"></script>

	<script src="angular-app/pages/admin/3-1.laporan-pegawai-sppd/laporan-pegawai-sppd.ctrl.js?version=<?php echo(rand()); ?>"></script>

	<script type="text/javascript"> window.version = <?php echo(rand()); ?>; </script>
</head>
<body class="hold-transition skin-blue sidebar-mini" ng-class="{'body-grey': isGrey}">
	<ui-view></ui-view>
</body>
</html>