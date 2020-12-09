<?php

/**
* 
*/
class OrderController extends Controller
{
	
	function __construct()
	{
		$this->folder = "admin";
		if(!isset($_SESSION['admin'])){
			header("Location:".APP_URL."indexadmin");
		}
	}
	function index(){
		//Xu ly hien thi don hang
		$this->render('order');
	}
	function gerOrderById(){
		//Xu ly Sap xep
	}

	function action(){
		//Xu ly action
	}
}