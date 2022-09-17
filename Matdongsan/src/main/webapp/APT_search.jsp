<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="favicon.png">

	<meta name="description" content="" />
	<meta name="keywords" content="bootstrap, bootstrap5" />
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="fonts/icomoon/style.css">
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<link rel="stylesheet" href="css/tiny-slider.css">
	<link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/style.css">

	<title>Property &mdash; Free Bootstrap 5 Website Template by Untree.co</title>

	<!-- 자동완성 -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="./data.js"></script>
	
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/join.css">
    
    <!-- popUp src, css -->
    <script src="js/jquery-3.6.0.min.js"></script>
    <style type="text/css">
    	#layer_bg {
			display: none;
			position: absolute; /* 시작 지점을 버튼 위, 0픽셀부터 시작하려고 주는 것*/
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			background: rgba(0, 0, 0, 0.5)
		}
		
		#popup {
			position: absolute;
			padding: 30px 15px 15px 15px;
			box-sizing: border-box;
			border-radius: 15px;
			width: 600px;
			height: 400px;
			background: #fff;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			box-shadow: 7px 7px 5px rgba(0, 0, 0, 0.2); /*x y 번짐 색상*/
		}
		
		#popup>h2 {
			margin-bottom: 25px;
		}
		
		#popup>h2>.btn-close {
			float: right;			
		}
		
		#lo-ar-name {
			margin-bottom: 50px;		
		}
    </style>

</head>
<script>
		$(function () {	//화면 로딩후 시작
		$("#searchInput").autocomplete({  //오토 컴플릿트 시작
			source: List,	// source는 data.js파일 내부의 List 배열
			focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
				return false;
			},
			minLength: 1,// 최소 글자수
			delay: 100,	//autocomplete 딜레이 시간(ms)
			//disabled: true, //자동완성 기능 끄기
		});
	});

	
</script>
<body>

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>                                                              
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<nav class="site-nav">
		<div class="container">
			<div class="menu-bg-wrap">
				<div class="site-navigation">
					<a href="#" class="logo m-0 float-start">Matdongsan</a>
					<a></a>


					<ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
						<li class="active"><a href="S"></li>
						<li><a href="APT_search.jsp">매물검색</a></li>
						<li><a href="CalcLand.jsp">부동산계산기</a></li>
						<li><a href="Suggestion.jsp">건의사항</a></li>
						<li><a href="MyPage.jsp">마이페이지</a></li>
						<li><a href="Start.jsp">로그아웃</a></li>
					</ul>

					<a href="#" class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
						<span></span>
					</a>

				</div>
			</div>
		</div>
	</nav>

	<div class="hero">


		<div class="hero-slide">
			<div class="img overlay" style="background-image: url('images/hero_bg_3.jpg')"></div>
			<div class="img overlay" style="background-image: url('images/hero_bg_2.jpg')"></div>
			<div class="img overlay" style="background-image: url('images/hero_bg_1.jpg')"></div>
		</div>

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center">
					<h1 class="heading" data-aos="fade-up">"Matdongsan"은 사용자가 보기 쉽도록 아파트/주택의 매매 혹은 전/월세 실거래가 <br> 정보  및 유용한 지역 정보를 담고있는 사이트입니다.</h1>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3" data-aos="fade-up" data-aos-delay="200">
						<input id="searchInput" type="text" class="form-control px-4" placeholder="아파트명 또는 지역명을 검색해주세요.">
						<!-- <button id="sbtn" type="button" class="btn btn-primary" onClick="location.href='kakaomap.jsp'">Q</button> -->
						<button id="sbtn" type="button" class="btn btn-primary">Q</button> 
						<br>
						<br>
					</form>

					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					
					<!-- check-box popUp body-->
					<div id="mask"></div>
					<div id="layer_bg"> 
      						 <div id="popup" style=""> 
          						 	<h2>
               						상세 정보 선택
              					 		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           							</h2>
          					 		<!--  컨텐츠 영역입니다.  /*내용*/ -->
							<form action="doJoin" method="POST" class="joinForm_check" onsubmit="DoJoinForm__submit(this); return false;"
		     				style="text-align:center; height:0px; top:auto;">
		     						
		     						<div id="lo-ar-name">
	     								<span><h1>지역명 or 아파트명</h1></span>		     						
		     						</div>		     						
		     						
	     							<div>
									<table class="select_check">
										<tr>
											<td>
												<input type="radio" name="chk_info1" value="" style="margin-left:80px">1층
												<input type="radio" name="chk_info1" value="" style="margin-left:60px">남향
												<input type="radio" name="chk_info1" value="" style="margin-left:60px">남서향
												<input type="radio" name="chk_info1" value="" style="margin-left:60px">남동향
											</td>
										</tr>
									</table>
									<br>
									<table class="select_check">
										<tr>
											<td>
												<input type="radio" name="chk_info2" value="" style="margin-left:80px">1억 이하
												<input type="radio" name="chk_info2" value="" style="margin-left:20px">1억~3억
												<input type="radio" name="chk_info2" value="" style="margin-left:30px">3억~5억
												<input type="radio" name="chk_info2" value="" style="margin-left:50px">5억 이상
											</td>
										</tr>
									</table>
									<br>
									<table class="select_check">
										<tr>
											<td>
												<input type="radio" name="chk_info3" value="" style="margin-left:80px">4년 이하
												<input type="radio" name="chk_info3" value="" style="margin-left:20px">10년 이하
												<input type="radio" name="chk_info3" value="" style="margin-left:20px">15년 이하
												<input type="radio" name="chk_info3" value="" style="margin-left:40px">15년 이상
											</td>
										</tr>
									</table>
									<br>
									<br>									
	     							</div>
				       					<div>
				       						<button id="sbtn" type="button" class="btn btn-primary" onClick="location.href='kakaomap.jsp'">Q</button>
				       					</div>
							</form>
       					</div>
   					</div>
					<!-- check-box popUp end -->
					
				</div>
			</div>
		</div>



	</div>
	
<!-- footer -->

	<div class="site-footer">
		<div class="container">
		   
		   <div class="row">
			  <div class="col-lg-4">
				 <div class="widget">
					<h3>Contact</h3>
					<address>전라남도 순천시 중앙로 260 5층 스마트인재개발원</address>
					<ul class="list-unstyled links">
					   <li><a href="tel://11234567890">061) 123-4567</a></li>
					   <li><a href="mailto:info@mydomain.com">Matdongsan@gmail.com</a></li>
					</ul>
				 </div> <!-- /.widget -->
			  </div> <!-- /.col-lg-4 -->         
			  <div class="col-lg-4">
				 <div class="widget">
					<h3>Times</h3>
					<ul class="list-unstyled links">
					   <li><a href="#">월 ~ 금 9:00 AM - 18:00 PM</a></li>
					</ul>
					<ul class="list-unstyled social">
					   <li><a href="#"><span class="icon-instagram"></span></a></li>
					   <li><a href="#"><span class="icon-twitter"></span></a></li>
					   <li><a href="#"><span class="icon-facebook"></span></a></li>
					   <li><a href="#"><span class="icon-linkedin"></span></a></li>
					   <li><a href="#"><span class="icon-pinterest"></span></a></li>
					   <li><a href="#"><span class="icon-dribbble"></span></a></li>
					</ul>
				 </div> <!-- /.widget -->
			  </div> <!-- /.col-lg-4 -->
		   </div> <!-- /.row -->
  
		   <div class="row mt-5">
			  <div class="col-12 text-center">
				 <!-- 
				**==========
				NOTE: 
				Please don't remove this copyright link unless you buy the license here https://untree.co/license/  
				**==========
			  -->
  
			  <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a> <!-- License information: https://untree.co/license/ -->
			  | 개인정보처리방침 
			  </p>
  
			</div>
		  </div>
		</div> <!-- /.container -->
	</div> <!-- /.site-footer -->


    <!-- Preloader -->
    <div id="overlayer"></div>
    <div class="loader">
    	<div class="spinner-border" role="status">
    		<span class="visually-hidden">Loading...</span>
    	</div>
    </div>

    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/tiny-slider.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/navbar.js"></script>
    <script src="js/counter.js"></script>
    <script src="js/custom.js"></script>
    
    <!-- popUp function() -->
    <script type="text/javascript">
    $(document).ready(function() {
    	$("#sbtn").click(function() {
   		let name=$("#searchInput").val();
    		//console.log(name);
    		if(!name){
    			alert('검색할 정보를 입력하세요.');
    		}else{    			
    			$('#lo-ar-name').html('<span><h1>'+name+'</h1></span>');
	    		$("#layer_bg").show();
	    		$("#mask").fadeIn(100);
    		}
    	});

    	$(".btn-close").on('click', function() {
    		$("#searchInput").val('');
    		$("input[name='chk_info1']").prop("checked",false); 
    		$("input[name='chk_info2']").prop("checked",false); 
    		$("input[name='chk_info3']").prop("checked",false); 
    		$("#layer_bg").hide();
    		$("#mask").fadeOut(100);
    	});


    	/* // 팝업 중앙 정렬
    	var $layerPopup = $("#layer_bg");
    	var left = ($(window).scrollLeft() + ($(window).width() - $layerPopup.width()) / 2);
    	var top = ($(window).scrollTop() + ($(window).height() - $layerPopup.height()) / 2 );
    	$layerPopup.css({ "left": left, "top":top, "position": "absolute" });
    	/* $("body").css("position", "relative").append($layerPopup);  */
    });
    </script>
    
  </body>
  </html>