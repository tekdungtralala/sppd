<?php
	include '../connect.php';
	session_start();
	$data = $_SESSION["data"];

	foreach ( $data as $d ) {
		echo "Nomor Surat Tugas = " . $d->reference_number;
		echo "<br/>";
		echo "Tanggal Pelaksanaan = " . $d->start_date . " - " . $d->end_date;
		echo "<br/>";
		echo "Task = " . $d->task;
		echo "<br/>";
		echo "Judul Laporan = " . $d->report_title;
		echo "<br/>";
		echo "Tujuan = " . $d->objective;
		echo "<br/>";
		foreach ( $d->officers as $o ) {
			echo $o->reference_number . "  -  " . $o->name . "  -  " . $o->officer_id ."<br/>";
		}

		echo "<br/>";
	}
?>

