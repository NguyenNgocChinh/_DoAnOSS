<?php

class productModel extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	function getAllPrds(){
		//GET ALL SAN PHAM
$prd = $this->select('*', 'sanpham sp, danhmucsp dm','sp.madm = dm.madm', 'ORDER BY sp.ngay_nhap DESC');
		return $prd;
	}
}