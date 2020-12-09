<?php

/**
* 
*/
class MemberController extends Controller
{
	
	function __construct()
	{
		$this->folder = "admin";
		if(!isset($_SESSION['admin'])){
			header("Location:".APP_URL."indexadmin");
		}
	}
	function index(){
		//Xu ly hien thi thanh vien
		$this->render('member');
	}
	function action(){
		//Xu ly action
	}
}