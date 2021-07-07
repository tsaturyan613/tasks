<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Common_model extends CI_Model {

	public function __construct() {

		parent::__construct();
	}
	
	public function RetriveRecordByWhereRow($table,$where_clause) {
		$this->db->select('*');
		$this->db->from($table);
		if(!empty($where_clause))
		$this->db->where($where_clause);
		$query = $this->db->get();
		$row = $query->row_array();
		return $row;
	}
	
	public function RetriveRecordByWhere($table,$where_clause) {
		$this->db->select('*');
		$this->db->from($table);
		if(!empty($where_clause))
		$this->db->where($where_clause);
		$query = $this->db->get();
		return $query;
	}
	
	public function RetriveRecordByWhereLimit($table,$where_clause,$limit,$orderbyfld,$orderby) {
		$this->db->select('*');
		$this->db->limit($limit);
		$this->db->from($table);
		if(!empty($where_clause))
		$this->db->where($where_clause);
		$this->db->order_by($orderbyfld, $orderby);
		$query = $this->db->get();
		return $query;
	}
        public function RetriveRecordOrderBy($table,$where_clause,$orderbyfld,$orderby) {
		$this->db->select('*');		
		$this->db->from($table);
		if(!empty($where_clause))
		$this->db->where($where_clause);
		$this->db->order_by($orderbyfld, $orderby);
		$query = $this->db->get();
		return $query; 
	}
        
	public function get_all_record_Where_Limit($table_name,$where_array,$limit,$orderbyfld,$orderby){
		$this->db->select('*');	
		$this->db->limit($limit);
		$this->db->from($table_name);
		if(!empty($where_array))
		$this->db->where($where_array);
		$this->db->order_by($orderbyfld, $orderby);
		$query = $this->db->get();
		return $query->result();
	}
	public function get_all_record($table_name,$where_array){
		$res=$this->db->get_where($table_name,$where_array);
		return $res->result();
	}
	
	function AddRecord($row,$table) {
		$str = $this->db->insert($table, $row);    
	}
	
	function UpdateRecord($row,$table,$idfld,$id)
	{
		$this->db->where($idfld, $id);
		$query = $this->db->update($table, $row);
		return $query;
	}
	function UpdateRecordWhereArray($row,$table,$where_clause)
	{
		$this->db->where($where_clause);
		$query = $this->db->update($table, $row);
		return $query;
	}
	
	public function GetAll($table_name){
		$this->db->select('*');
		$this->db->from($table_name);
		$query = $this->db->get(); 
		return $query;
	}
	
	public function Count($table_name) {
		$this->db->select('*');
		$this->db->from($table_name);
		$query = $this->db->get();  
		$tot_rec = $query->num_rows();
		return $tot_rec;
	}
	
	public function CountWhere($table_name,$where_clause) {
		$this->db->select('*');
		if(!empty($where_clause))
		$this->db->where($where_clause);
		$this->db->from($table_name);
		$query = $this->db->get();  
		$tot_rec = $query->num_rows();
		return $tot_rec;
	}


	public function Delete($table_name, $id, $idfld){
		$this->db->where($idfld, $id);
		$this->db->delete($table_name);
	}
	public function get_records_from_sql($sql)
	{
		
		$query = $this->db->query($sql);
		return $query->result();
		
	}
	
	public function getRandomNumber($length)
	{
			
		$random= "";
		$data1 = "";
		srand((double)microtime()*1000000);
		$data1 = "9876549876542156012";
		$data1 .= "0123456789564542313216743132136864313";
		for($i = 0; $i < $length; $i++)
		{
			$random .= substr($data1, (rand()%(strlen($data1))), 1);
		}
		return $random;
	}
	public function GetAllWhere($table_name,$where_clause,$orderbyfld, $orderby) {
		if($where_clause != '')
			$this->db->where($where_clause);
		$this->db->select('*');
		$this->db->from($table_name);
		$this->db->order_by($orderbyfld, $orderby);
		$query = $this->db->get();  
		return $query->result();
	} 

	public function GetSumWhere($table_name,$where_clause,$sum_field) {
		if($where_clause != '')
		$this->db->where($where_clause);
		$this->db->select_sum($sum_field);
		$this->db->from($table_name);
		$query = $this->db->get();  
		return $query->result();
	} 
	
}
//end of class
?>