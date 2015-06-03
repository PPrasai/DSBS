<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class BillingMDL extends CI_Model {

	function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function checkout( $cart ) {

		$return_data = null;
		$b_id = 0;

		$last_bill_number = $this->db->query( "SELECT count( b_id ) AS count FROM tbl_bill" );

		if( $cart->creditflag ) {

			/**
			 * tbl_bill
			 */

			$b_id = $last_bill_number->result()[0]->count + 1;
			$b_amt = 0;

			date_default_timezone_set('Asia/Kathmandu');

			$date = date("Y-m-d H:i:s");

			$query = "INSERT INTO tbl_bill VALUES ('". $b_id. "', 'U1', '". $date ."' ,". $cart->creditflag ." );";

			if ( ! $this->db->query( $query ) ) {
				return '500 ERROR';
			}

			else {

				/**
				 * tbl_bill_detail, tbl_schemes
				 */
				$bill_time = date("H:i:s");

				foreach ($cart->data as $item) {

					$query = "INSERT INTO tbl_bill_detail VALUES ('". $b_id ."', '". $item->item ."', ". $item->qty ." );";

					if ( ! $this->db->query( $query ) ) {
						return '500 ERROR';
					}

					if ( $bill_time > '06:00:00' && $bill_time < '19:00:00' ) {
						// $b_amt += ( $item->qty * ( $item->unit_price / 2 ) );
						$return_data = true;
					}

					else {
						$b_amt += ( $item->qty * $item->unit_price );
						$return_data = explode('P', $item->item)[0];
					}
				}

				/**
				 * tbl_bill_amount
				 */

				$query = "INSERT INTO tbl_bill_amount VALUES ('". $b_id ."', ". $b_amt .")";

				if ( ! $this->db->query( $query ) ) {
					return '500 ERROR';
				}

				/**
				 * tbl_creditors_advanced
				 */

				$date = date('Y-m-d H:i:s', strtotime(str_replace('-', '/', $cart->dueDate)));

				$query = "INSERT INTO tbl_creditors_advanced VALUES ('". $cart->cr_id ."', '". $b_id ."', '". $date ."', false);";

				if ( ! $this->db->query( $query ) ) {
					return '500 ERROR';
				}

				/**
				 * tbl_transaction
				 */

				$trans_id = $this->db->query( "SELECT count( t_id ) AS count FROM tbl_transaction" )->result()[0]->count + 1;

				$query = "INSERT INTO tbl_transaction VALUES ('". $trans_id ."', '". date('Y-m-d H:i:s') ."', 'in', 'U1',". $b_amt .", 'Sales' )";

				if ( ! $this->db->query( $query ) ) {
					return '500 ERROR';
				}

				/**
				 * tbl_product
				 */

				foreach ($cart->data as $item) {
					$query = "UPDATE tbl_product SET p_count = p_count - ". $item->qty ." WHERE p_id = '". $item->item ."';";

					if ( ! $this->db->query( $query ) ) {
						return '500 ERROR';
					}
				}

				/**
				 * tbl_tax
				 */

				foreach ($cart->data as $item) {
					if( $item->tax != null ) {
						$id = $this->db->query("SELECT count(tx_id) AS count FROM tbl_tax")->result()[0]->count + 1;
						$query = "INSERT INTO tbl_tax VALUES ( $id, $b_id, CURRENT_DATE(), $item->unit_price, '$item->name', $item->tax );";
						$this->db->query($query);
					}
				}

				return '200 OK';

			}
		}

		else {

			/**
			 * tbl_bill
			 */

			$b_id = $last_bill_number->result()[0]->count + 1;
			$b_amt = 0;

			date_default_timezone_set('Asia/Kathmandu');

			$date = date("Y-m-d H:i:s");

			$query = "INSERT INTO tbl_bill VALUES ('". $b_id. "', 'U1', '". $date ."', false );";

			if ( ! $this->db->query( $query ) ) {
				return '500 ERROR';
			}

			else {


				/**
				 * tbl_bill_detail
				 */

				foreach ($cart->data as $item) {
					$query = "INSERT INTO tbl_bill_detail VALUES ('". $b_id ."', '". $item->item ."', ". $item->qty ." );";

					if ( ! $this->db->query( $query ) ) {
						return '500 ERROR';
					}

					$b_amt += ( $item->qty * $item->unit_price );
				}

				/**
				 * tbl_bill_amount
				 */

				$query = "INSERT INTO tbl_bill_amount VALUES ('". $b_id ."', ". $b_amt .")";

				if ( ! $this->db->query( $query ) ) {
					return '500 ERROR';
				}

				/**
				 * tbl_transaction
				 */

				$trans_id = $this->db->query( "SELECT count( t_id ) AS count FROM tbl_transaction" )->result()[0]->count + 1;

				$query = "INSERT INTO tbl_transaction VALUES ('". $trans_id ."', '". date('Y-m-d H:i:s') ."', 'in', 'U1',". $b_amt .", 'Sales' )";

				if ( ! $this->db->query( $query ) ) {
					return '500 ERROR';
				}

				/**
				 * tbl_product
				 */

				foreach ($cart->data as $item) {
					$query = "UPDATE tbl_product SET p_count = p_count - ". $item->qty ." WHERE p_id = '". $item->item ."';";

					if ( ! $this->db->query( $query ) ) {
						return '500 ERROR';
					}
				}

				/**
				 * tbl_tax
				 */

				foreach ($cart->data as $item) {
					if( $item->tax != null ) {
						$id = $this->db->query("SELECT count(tx_id) AS count FROM tbl_tax")->result()[0]->count + 1;
						$query = "INSERT INTO tbl_tax VALUES ( $id, $b_id, CURRENT_DATE(), $item->unit_price, '$item->name', $item->tax );";
						$this->db->query($query);
					}
				}


				return $return_data;

			}
		}

	}

}

/* End of file billingMDL.php */
/* Location: ./application/models/billingMDL.php */
