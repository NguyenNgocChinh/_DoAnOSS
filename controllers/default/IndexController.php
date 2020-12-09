<?php 
/**
* 
*/
class IndexController extends Controller
{
	function __construct(){
		$this->folder = "default";
	}
	function index()
	{
		$this->render('index');
	}
	function signup(){
		$this->render('signup');
	}	
	function signin(){
		$this->render('signin');
	}
}
?>