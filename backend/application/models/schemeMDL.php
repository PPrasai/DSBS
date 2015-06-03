<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class SchemeMDL extends CI_Model {

	function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function getAll() {

		$query = "SELECT * FROM tbl_schemes WHERE sch_start_date <= CURRENT_DATE() AND ( sch_end_date > CURRENT_DATE() || sch_end_date IS NULL )";

		return $this->db->query( $query )->result();
	}

	function createQuery( $sch, $sch_id ) {

		$sch_startDate = $sch->schemeStartDate == null ? 'null': "'". $sch->schemeStartDate ."'";
		$sch_endDate = $sch->schemeEndDate == null ? 'null': "'".$sch->schemeEndDate ."'";
		$sch_dailyStartTime = $sch->schemeDailyStartTime == null ? 'null': "'".$sch->schemeDailyStartTime ."'";
		$sch_dailyEndTime = $sch->schemeDailyEndTime == null ? 'null': "'".$sch->schemeDailyEndTime ."'";
		$sch_c_id = $sch->c_id == null ? 'null': "'".$sch->c_id ."'";
		$sch_p_id = $sch->p_id == null ? 'null': "'".$sch->p_id ."'";
		$query = "INSERT INTO tbl_schemes VALUES (". $sch_id .", '$sch->schemeName', ". $sch_startDate .", ". $sch_endDate .", ". $sch_dailyStartTime .", ". $sch_dailyEndTime .", $sch->schemeAmount, '$sch->schemeUnit', '$sch->schemeType', '$sch->u_id', ". $sch_c_id .", ". $sch_p_id .");";
		return $query;

	}

	public function addNew( $sch ) {
		$sch_id = $this->db->query( "SELECT count(sch_id) AS count FROM tbl_schemes" )->result()[0]->count;
		$query = $this->createQuery( $sch, $sch_id + 1);
		return $this->db->query( $query );
	}
}
