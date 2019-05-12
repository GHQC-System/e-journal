<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Вход</title>
	<link href="/static/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
	<link rel="shortcut icon" href="/static/images/jur.ico" type="image/x-icon">
	<link rel="icon" href="/static/images/jur.ico" type="image/x-icon">
</head>
<body>
<div id="pen">
	<img src="/static/images/pencil.png"  width="250">
</div>



<div id="wrapper">
    <div class="user-icon"></div>
    <div class="pass-icon"></div>

<form name="login-form" class="login-form" action="" method="post">

    <div class="header">
		<h1>Авторизация</h1>
		<span>Введите ваши регистрационные данные для входа в ваш личный кабинет. </span>
    </div>

    <div class="content">
		<input name="e_id" type="text" class="input username" value="e_id" onfocus="this.value=''" />
		<input name="password" type="password" class="input password" value="Пароль" onfocus="this.value=''" />
    </div>

    <div class="footer">
    	<center>
    		<input type="submit" name="submit" value="ВОЙТИ" class="button" />
    	</center>

    </div>

</form>
</div>
<div class="gradient"></div>

<script type="text/javascript">
$(document).ready(function() {
	$(".username").focus(function() {
		$(".user-icon").css("left","-48px");
	});
	$(".username").blur(function() {
		$(".user-icon").css("left","0px");
	});

	$(".password").focus(function() {
		$(".pass-icon").css("left","-48px");
	});
	$(".password").blur(function() {
		$(".pass-icon").css("left","0px");
	});
});
</script>
</body>
</html>