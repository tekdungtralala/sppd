<?php
	include '../connect.php';
	if ('POST' === $_SERVER['REQUEST_METHOD']) {
		$json = file_get_contents('php://input');
		$person = (array) json_decode($json);
		$sql = "insert into sppd (id, state, reference_number, start_date, end_date, total_day, base, objective, task, description, chief_name) values("
			. " NULL, "
			. " 1, "
			. " '" . $person['reference_number'] . "', " 
			. " '" . $person['start_date'] . "', " 

			. " '" . $person['end_date'] . "', " 
			. " '" . $person['total_day'] . "', " 
			. " '" . $person['base'] . "', " 
			. " '" . $person['objective'] . "', " 

			. " '" . $person['task'] . "', " 
			. " '" . $person['description'] . "', " 
			. " '" . $person['chief_name'] . "' " 
			. " );";

		$conn->query($sql);
		$sppdID = $conn->insert_id;
			foreach ($person['officers'] as $o) {
				$sqlO = "insert into sppd_officer values(null, "
					. $sppdID .", " 
					. " '" . $o->name . "',"
					. " '" . $o->officer_id . "',"
					. " '" . $o->officeClass->name . "',"
					. " '" . $o->officePosition->name . "');";
				$conn->query($sqlO);
			}
	}
?>