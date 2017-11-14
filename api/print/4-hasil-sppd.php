<?php
	include '../connect.php';
	session_start();
	$data = $_SESSION["data"];

	foreach ( $data as $d ) {
		echo "Nomor surat tugas = " . $d->reference_number;
		echo "<br/>";
		echo "Judul Laporan = " . $d->task;
		echo "<br/>";
		echo "Kota = " . $d->objective;
		echo "<br/>";
		echo "Hasil  = " . $d->report_content;
		echo "<br/>";
		foreach ( $d->officers as $o ) {
			echo $o->reference_number . "  -  " . $o->name . "  -  " . $o->officer_id ."<br/>";
		}

		echo "<br/>";
	}
?>

