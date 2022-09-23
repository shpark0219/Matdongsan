<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="img/pageTap.png">

	<meta name="description" content="" />
	<meta name="keywords" content="bootstrap, bootstrap5" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="fonts/icomoon/style.css">
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<link rel="stylesheet" href="css/tiny-slider.css">
	<link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/join.css">

	<title>Matdongsan</title>
</head>
<body>

	<!-- header 자리 -->
	<jsp:include page="outerLine/header1.jsp"/>
	<!-- header 자리 -->
	
	<div class="hero">


		<div class="hero-slide">
			<div class="img overlay"
				style="background-image: url('images/hero_bg_3.jpg')"></div>
			<div class="img overlay"
				style="background-image: url('images/hero_bg_2.jpg')"></div>
			<div class="img overlay"
				style="background-image: url('images/hero_bg_1.jpg')"></div>
		</div>
		<form action="doJoin" method="POST" class="joinForm_Login"
			onsubmit="DoJoinForm__submit(this); return false;"
			style="text-align: center">
			<h2>로그인 오류</h2>
			<hr style="width: 550px;">
			<div class="fonsize">회원 정보가 일치하지 않습니다. 다시 로그인 하세요.</div>
			<br>
			<br>
			<br> <br> <br> <input type="button"
				onClick="location.href='login.jsp'" class="btn_two"
				value="L O G I N" /> <input type="button"
				onClick="location.href='member_search.jsp'" class="btn_three"
				value="회원정보 찾기" />
		</form>

		</div>
		
		<div style="clear:both;"></div>
	

		<!-- footer 자리 -->
		<jsp:include page="outerLine/footer.jsp"/>
		<!-- footer 자리 -->

		<script src="js/bootstrap.bundle.min.js"></script>
		<script src="js/tiny-slider.js"></script>
		<script src="js/aos.js"></script>
		<script src="js/counter.js"></script>
		<script src="js/custom.js"></script>
</body>
</html>