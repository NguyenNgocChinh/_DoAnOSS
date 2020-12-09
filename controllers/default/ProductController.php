<?php 

/**
* 
*/
class ProductController extends Controller
{
	
	function __construct()
	{
		$this->folder = "default";
	}
	function index(){
		$this->List();
	}
	function List($type = null){
		$this->render('Products');
	}
	function PrdDetail($masp){
		require_once 'views/default/ProductDetail.php';
	}
}