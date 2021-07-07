<?php
class Adminlogin extends CI_Model { 

	public function __construct() { 
		parent::__construct(); 
	}	
	/*
	Name : loginCheck
	Purpose : to authentication
	Parameter : username and password
	Return : query;
	*/
	public function loginCheck($username,$password) 
	{
		$this->db->select('*');
		$this->db->from('users');
		$this->db->where(array('username' => $username, 'password' => $password, 'usertype' => 'Admin'  ));		
		$query = $this->db->get(); 
		return $query;
	} /* end of login check function */	
} /* end of class */
?>