<?php

/**
* 
*/
class AnalyticsController extends Controller
{
	
	function __construct()
	{
		$this->folder = "admin";
		if(!isset($_SESSION['admin'])){
			header("Location:".APP_URL."indexadmin");
		}
	}
	function index(){

		$this->render('analytics');
	}
	function memberAnalytics(){
		$this->render('memberAnalytics');
	}
}