<?php 

/**
* 
*/
class ClientController extends Controller
{
	
	function __construct()
	{
		$this->folder = "default";
	}
	function viewcart(){
	
		$this->render('buynow');
	}
	function addtocart(){
		
	}
	function delPrd(){
		
	}
	function order(){
		
		$this->render('order');
	}
	function orderComplete(){
		
		$this->render('orderComplete');
	}
	function loadmore(){
		
	}
	function search(){
		
		require_once 'views/default/Products.php';
	}
}