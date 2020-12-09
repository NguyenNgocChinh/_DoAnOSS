<?php

/**
* 
*/
class IndexAdminController extends Controller
{
	
	function __construct()
	{
		$this->folder = "admin";

	}
	function index(){
		require_once 'views/admin/index.php';
	}
	function dashboard(){
		//Xu ly dashboard
		$this->render('dashboard');
	}
	function login(){
		//Xu ly login
	}
	function logout(){
		//Xu gi logout
	}
}