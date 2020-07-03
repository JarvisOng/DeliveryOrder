<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>BigFamilyデリバリー</title>
	<meta name="description" content="東京宅配フードサイト">
	<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
<div id="wrapper">
    <header>
    	<img class="logo" src="image/foodlogo.png" alt="delivery-logo">
    </header>
</div>
<div id="container">
<form action="loginRegister" method="post">
<table>
<tr>
  <td><h3 style="color: red;">${message}</h3>
  <h3 style="color: green;">${sucessmessage}</h3>
  </td>
  <td></td>
</tr>
<tr><td> お名前 : </td><td><input type ="text" class="input-style input-width" name="username"></td></tr>
<tr><td> パスワード : </td><td><input type ="password" class="input-style input-width" name="password"></td></tr>
<tr><td></td><td><input id="submit-setted" type="submit"  class="input-style" name="submit" value="login"></td></tr>
<tr><td><a href="testregister.jsp">新規登録へ</a></td></tr>


</table>
</form>
</div>
<footer>
        <h3>copyright (C) 2019 BigFamily food Delivery. All Right Reserved.</h3>
    </footer>
</body>
</html>