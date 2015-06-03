<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Schemes extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model( 'SchemeMDL' );
	}

  public function getSchemes() {
      echo json_encode( $this->SchemeMDL->getAll() );
  }

  public function addNew() {
  	$postdata = file_get_contents("php://input");
    $sch = json_decode($postdata);

    $returned = $this->SchemeMDL->addNew( $sch );

  }

}
