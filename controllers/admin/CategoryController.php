<?php

/**
* 
*/
class CategoryController extends Controller
{
	
	function __construct()
	{
		$this->folder = "admin";
		if(!isset($_SESSION['admin'])){
			header("Location:".APP_URL."indexadmin");
		}
	}
	function index(){
		//Xu ly hien thi
		$this->render('category');
	}
	function action(){
		//Xu ly action
	}
}