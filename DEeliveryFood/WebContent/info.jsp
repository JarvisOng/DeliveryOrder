<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<title>BigFamilyデリバリー</title>
	<meta name="description" content="東京宅配フードサイト">
	<link rel="stylesheet" type="text/css" href="css/info.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<div id="wrapper">
    <header>
    	<img class="logo" src="image/foodlogo.png" alt="delivery-logo">
    </header>
</div>

<div id="container">

	<form id="validationform" action="info.php" method="post">

		<label for="name">名前</label>
		<input id="name" class="input-style input-width" name="name" placeholder="名前をご入力ください">

　      <label for="address">メールアドレス</label>
        <input  id="address" class="input-style input-width"  name="address" placeholder="メールアドレスをご入力ください">

        <label for="pass1">パスワード</label>
        <input id="pass1" class="input-style input-width" type="password" name="pass1" placeholder="パスワードをご入力ください">

        <label for="pass2">再確認パスワード</label>
        <input id="pass2" class="input-style input-width" type="password" name="pass2" placeholder="再確認パスワードをご入力ください">

        <textarea id="mail-message" class="input-style" name="message"  rows="8" cols="80" placeholder="メッセジーの内容"></textarea>

        <button id="submitButton" class="input-style" type="submit" name="submit">送信</button>

        <br><br>
    </form>


　　</div>　

    <footer>
        <h3>copyright (C) 2019 BigFamily food Delivery. All Right Reserved.</h3>
    </footer>
</body>
</html>