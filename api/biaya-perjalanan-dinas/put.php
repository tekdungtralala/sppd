<?php
	include '../connect.php';
	if ('PUT' === $_SERVER['REQUEST_METHOD']) {
		$json = file_get_contents('php://input');
		$person = (array) json_decode($json);
		$sql = "update travel_expenses set" 
			. " transportation_costs='". $person['transportation_costs'] . "', " 
			. " lodging_cost='". $person['lodging_cost'] . "' " 
			. " where id=" . $person['id'];
		$conn->query($sql);

		echo $sql;
	}
?>