<?php

/**
* 
*/
class UserController extends Controller
{
	
	function __construct()
	{
		$this->folder = "users";
	}
	function index(){
		echo "Trang khong ton tai";
	}
	function login(){
		//Xu ly dang nhap
	}
	function rememberLogin(){
		//xu ly luu dang nhap
	}
	function register(){
		//xu ly dang ky
	}
	function logout(){
		//xu ly dang xuat
	}
	function viewinfo(){
		$this->render('info');
	}
	function editinfo(){
		//Xu ly sua thong tin
	}
	function vieweditpassword(){
		$this->render('editPassword');
	}
	function editpassword(){
		//Xu ly sua password
	}
}