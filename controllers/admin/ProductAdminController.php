<?php

/**
* 
*/
class ProductAdminController extends Controller
{
	
	function __construct()
	{
		$this->folder = "admin";
		if(!isset($_SESSION['admin'])){
			header("Location:".APP_URL."indexadmin");
		}
	}
	function index(){
		//Xu ly hien thi san pham
		require_once 'vendor/Model.php';
		require_once 'models/admin/productModel.php';
		$md = new productModel;
		$data = $md->getAllPrds();
		$this->render('product',$data,'SẢN PHẨM','admin');
	}
}