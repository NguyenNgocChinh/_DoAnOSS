<?php

class memberModel extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	function getAllMembers(){
		//get All Members
		return $mb = $this->select('*', 'thanhvien','quyen = 0', 'ORDER BY date DESC');
	}
	function memberToday(){
		//count member Today
		$now = new DateTime(null, new DateTimeZone('ASIA/Ho_Chi_Minh'));
		$today = $now->format('Y-m-d');
		$beforeWeek = date("Y-m-d", strtotime("-1 week"));
		$rs = $this->select('count(id) as newmem','thanhvien',"DATE(date) <= '".$today."' AND DATE(date) >= '".$beforeWeek."'");
		return $rs[0]['newmem'];
	}
	function allMember(){
		//Sum all Member
		$rs = $this->select('count(id) as sum','thanhvien');
		return $rs[0]['sum'];
	}
}