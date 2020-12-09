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
require_once 'vendor/Model.php';
		require_once 'models/users/userModel.php';
		$md = new userModel;

		$username = $_POST['username'];
		$password = $_POST['password'];
		$data = array();

		if($md->getUserByUsername($username)){
			$data = $md->getUserByUsername($username);
			if($password == $data['matkhau']){
				echo "LoginSuccess";
				$_SESSION['user'] = $data;
				$userCart = array();
				if(isset($_SESSION['cart'])){
					$sql = "SELECT masp FROM giohang WHERE user_id = ".$data['id'];
					$userCart = $md->getListMasp($sql);
					$addData = array();
					for($j = 0; $j < count($_SESSION['cart']); $j++){
						$pos = array_search($_SESSION['cart'][$j], $userCart);
						if($pos === false){
							$addData[] = $_SESSION['cart'][$j];
						}
					}
					$sql = "";
					for ($i=0; $i < count($addData); $i++) { 
						$sql .= "INSERT INTO giohang VALUES (".$data['id'].", ".$addData[$i].");\n";	
					}
					$md->exe_query($sql);
				}
				$sql = "SELECT masp FROM giohang WHERE user_id = ".$data['id']."";
				$_SESSION['cart'] = null;
				$_SESSION['cart'] = $md->getListMasp($sql);
				if($_POST['rmbme'] == 'true'){
					$cookie_value = $username;
					setcookie('user', $cookie_value, time() + (86400 * 30), "/");
				}
				return true;
			} else {
				echo "Sai tên tài khoản hoặc mật khẩu!";
			}
		} else {
			echo "Sai tên tài khoản hoặc mật khẩu!";
		}
		return false;
	
}
	function rememberLogin(){
		//xu ly luu dang nhap
require_once 'vendor/Model.php';
		require_once 'models/users/userModel.php';
		$md = new userModel;
		/*session_start();*/
		if(isset($_COOKIE['user'])){
			$_SESSION['user'] = $md->getUserByUsername($_COOKIE['user']);
			header('location: ../');
		} else {
			echo "Trang khong ton tai";
			return 0;
		}
	}
	function register(){
		//xu ly dang ky
require_once 'vendor/Model.php';
		require_once 'models/users/userModel.php';
		$md = new userModel;

		if(isset($_POST['name'])){
			$name = $_POST['name'];
		}
		if(isset($_POST['username'])){
			$username = $_POST['username'];
		} else {
			echo "Trang khong ton tai!";
			return 0;
		}
		if(isset($_POST['password'])){
			$password = $_POST['password'];
		}
		if(isset($_POST['cpassword'])){
			$cpassword = $_POST['cpassword'];
		}
		if(isset($_POST['addr'])){
			$addr = $_POST['addr'];
		}
		if(isset($_POST['tel'])){
			$phone = $_POST['tel'];
		}
		if(isset($_POST['email'])){
			$email = $_POST['email'];
		}


		if($username == ""){
			echo "Tên tài khoản không được để trống!";
			return false;
		}
		if($md->getUserByUsername($username)){
			echo "Tên tài khoản đã tồn tại!";
			return false;
		} else {
			if($password != $cpassword){
				echo "Nhập lại mật khẩu sai!";
				return false;
			}
			if($md->addUser($name, $username, $password, $addr, $phone, $email)){ 
				echo "RegisterSuccess";
				$_SESSION['user'] = $md->getUserByUsername($username);
				$userCart = array(); $sql = '';
				if(isset($_SESSION['cart'])){
					$sql = "SELECT masp FROM giohang WHERE user_id = ".$_SESSION['user']['id'];
					$userCart = $md->getListMasp($sql);
					$addData = array();
					for($j = 0; $j < count($_SESSION['cart']); $j++){
						$pos = false;
						if($userCart != ''){
							$pos = array_search($_SESSION['cart'][$j], $userCart);
						}
						if($pos === false){
							$addData[] = $_SESSION['cart'][$j];
						}
					}
					$sql = "";
					for ($i=0; $i < count($addData); $i++) { 
						$sql .= "INSERT INTO giohang VALUES (".$_SESSION['user']['id'].", ".$addData[$i].");\n";	
					}
					$md->exe_query($sql);
				}
				return true;
			} else {
				echo "Đã có lỗi trong quá trình tạo tài khoản, vui lòng thử lại sau!";
				return false;
			}
		}
	}
	
	function logout(){
		//xu ly dang xuat
session_unset();
		session_destroy();
		unset($_COOKIE['user']);
		setcookie('user',null,-1,'/');
		header('location: ../');
	}
	function viewinfo(){
		$this->render('info');
	}
	function editinfo(){
		//Xu ly sua thong tin
require_once 'vendor/Model.php';
		require_once 'models/users/userModel.php';
		$md = new userModel;
		$name = $addr = $tel = $email = "";
		if(isset($_POST['name'])){$name = $_POST['name'];}
		if(isset($_POST['addr'])){$addr = $_POST['addr'];}
		if(isset($_POST['tel'])){$tel = $_POST['tel'];}
		if(isset($_POST['email'])){$email = $_POST['email'];}
		$sql = "UPDATE thanhvien SET ten = '".$name."', diachi = '".$addr."', sodt = '".$tel."',email = '".$email."' WHERE id = ".$_SESSION['user']['id'];
		$md->exe_query($sql);
		$_SESSION['user'] = $md->getUserByUsername($_SESSION['user']['tentaikhoan']);
	}
	function vieweditpassword(){
		$this->render('editPassword');
	}
	function editpassword(){
		//Xu ly sua password
require_once 'vendor/Model.php';
		require_once 'models/users/userModel.php';
		$md = new userModel;
		$opw = $npw = $cnpw = "";
		if(isset($_POST['opw'])){$opw = $_POST['opw'];}
		if(isset($_POST['npw'])){$npw = $_POST['npw'];}
		if(isset($_POST['cnpw'])){$cnpw = $_POST['cnpw'];}
		if($opw != $_SESSION['user']['matkhau']){
			echo "Mật khẩu cũ sai!";
			return 0;
		} else {
			if($npw != $cnpw){
				echo "Nhập lại mật khẩu không trùng khớp!";
				return 0;
			}
		}
		$sql = "UPDATE thanhvien SET matkhau = '".$npw."' WHERE id = ".$_SESSION['user']['id'];
		$md->exe_query($sql);
	}
}
