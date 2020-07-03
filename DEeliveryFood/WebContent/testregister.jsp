<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="ja">
<head>
<meta charset="utf-8">
<title>BigFamilyデリバリー</title>
<meta name="description" content="東京宅配フードサイト">
<script src=js/jquery-1.7.1.min.js></script>
<link rel="stylesheet" type="text/css" href="css/signup.css">
</head>
<body>

<div id="wrapper">
    <header>
    	<img class="logo" src="image/foodlogo.png" alt="delivery-logo">
    </header>
</div>
<div id="container">
<form id="validationform" action="loginRegister" method="post">
<table>

<tr>
<td> お名前 : </td><td><input id="name" class="input-style input-width" name="username"></td>
</tr>
<tr>
<td> メールアドレス : </td>
<td><input id="email" class="input-style input-width" name="email"></td>
</tr>
<tr>
<td> パスワード : </td>
<td><input id="pass1" class="input-style input-width"  name="password"></td>
</tr>
<tr>
<td> パスワード(再確認) :</td>
<td><input id="pass2" class="input-style input-width" name="password"></td>
</tr>
<tr>
<td></td>
<td><input id="submit" type="submit" class="input-style" name="submit" value="register"></td>
<td></td>
</tr>
</table>
</form>

</div>
    <footer>
        <h3>copyright (C) 2019 BigFamily food Delivery. All Right Reserved.</h3>
    </footer>
</body>
</html>