<?php
if(isset($_COOKIE['user']) && !isset($_SESSION['user'])){
	header('location: user/rememberLogin');
}
?>
<html lang="en">
<head>
	<title> 9XWatch - Thể hiện sự lịch lãm của phái mạnh! </title>
</head>
<body>
	<header id='header'>
		<h1>Đây là header</h1>
	</header>

	<div id="bodyContainer">
		<?php echo $content; ?>
	</div>


	<footer>
		<div class="container-fluid">
			<h1>Đây là footer</h1>
		</div>
	</footer>
</body>
</html>

