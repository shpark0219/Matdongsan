<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- /*
* Template Name: Property
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">
<head>
	<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="/js/jquery-3.6.0.min.js"></script>   
    <style>
        .capture-media {position:relative;}
        .capture-media .spinner-grow {position:relative; position: absolute; left: 27px; top: 15px; display:none;}
        @media (max-width: 500px) {
            .saveButtons .btn {
              padding: .4rem .65rem !important;
              letter-spacing: -0.1rem;
            }
        } 
        
        .hiding {
            display: none;
        }
    </style>
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
</head>
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
					<a href="Start.html" class="logo m-0 float-start">Matdongsan</a>

					<ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
						<li class="active"><a href="Start.html">Home</a></li>
						<li><a href="APT_search.html">매물검색</a></li>
						<li><a href="Transaction.html">실거래가</a></li>
						<li class="has-children">
							<a>부동산계산기</a>
							<ul class="dropdown">
								<li><a href="test_LTV.html">LTV 계산기</a></li>
								<li><a href="#">DSR 계산기</a></li>
								<li><a href="#">DTI 계산기</a></li>

							</ul>
						<li><a href="Suggestion.html">건의사항</a></li>
						<li><a href="contact.html">마이페이지</a></li>
						<li><a href="Start.html">로그아웃</a></li>

					<a href="#" class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
						<span></span>
					</a>

				</div>
			</div>
		</div>
	</nav>

	<div class="hero page-inner overlay" style="background-image: url('images/hero_bg_1.jpg');">

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">DTI계산</h1>

					
				</div>
			</div>
		</div>
	</div>

	<div id="contents">				
		<div class="col-md-6 mb-3">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">대출금액</span>
				</div>
				<input type="number" class="form-control number-helper" id="amount" name="amount" placeholder="대출 희망금액" value="">
				<div class="input-group-append">
					<span class="input-group-text">만원</span>
				</div>
			</div>
		</div>
		<div class="col-md-6 mb-3">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">담보가치</span>
				</div>
				<input type="number" class="form-control number-helper" id="price" name="price" placeholder="평균 시세(감정가)" value="">
				<div class="input-group-append">
					<span class="input-group-text">만원</span>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 mb-3">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						선순위채권&nbsp;
						<i class="fas fa-question-circle small" data-toggle="tooltip" data-placement="top" title="" aria-hidden="true" data-original-title="기존 대출 등이 있는 경우. 근저당은 채권최고액 기준으로 입력"></i><span class="sr-only">기존 대출 등이 있는 경우. 근저당은 채권최고액 기준으로 입력</span>
					</span>
				</div>
				<input type="number" class="form-control number-helper" id="seniorBond" name="seniorBond" placeholder="선순위 대출 등" value="">
				<div class="input-group-append">
					<span class="input-group-text">만원</span>
				</div>
			</div>
		</div>
		<div class="col-md-6 mb-3 leaseGroup d-none">
			<div id="dpi" class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">임차보증금</span>
				</div>
				<input type="number" class="form-control number-helper" id="deposit" name="deposit" placeholder="전월세의 보증금" value="">
				<div class="input-group-append">
					<span class="input-group-text">만원</span>
				</div>
			</div>
		</div>
		<div class="col-md-6 mb-3 priorityDepositGroup roomGroup d-none">
			<div id="pd2" class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">소액보증금</span>
				</div>
				<input type="number" class="form-control" id="priorityDeposit" name="priorityDeposit" placeholder="미입력 시 기본값" value="">
				<div class="input-group-append">
					<span class="input-group-text">만원</span>
				</div>
			</div>
		</div>
		<div class="col-md-6 mb-3 roomGroup primary">
			<div id="rnum" class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">방 수</span>
				</div>
				<input type="number" class="form-control" id="room" name="room" placeholder="소액보증금 계산용" value="">
				<div class="input-group-append">
					<span class="input-group-text">개</span>
				</div>
			</div>
		</div>
		<div class="col-md-6 mb-3 leaseGroup roomGroup d-none">
			<div id="lr" class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">임대 방 수</span>
				</div>
				<input type="number" class="form-control" id="leaseRoom" name="leaseRoom" placeholder="소액보증금 계산용" value="">
				<div class="input-group-append">
					<span class="input-group-text">개</span>
				</div>
			</div>
		</div>
			
		<div class="col-md-8 nocap">
			<!--<ns-->
			<button id="submit" type="button" class="btn btn btn-primary">
				<i class="fas fa-calculator" aria-hidden="true"></i> LTV계산
			</button>				
			<!--ns>-->
		</div>
	</div>
	</form>

<div class="hiding">
	<div class="mt-4">
		<div class="d-inline mr-3 h4 font-weight-bold">계산 결과</div> 
		<div class="custom-control custom-checkbox mb-3 d-inline ml-2 nocap">
			<input type="checkbox" id="number" class="custom-control-input" checked="">
			<label class="custom-control-label" for="number">순번</label>
		</div>
			<!--
			<div class="custom-control custom-checkbox mb-3 d-inline mx-1">
			<input type="checkbox" id="dscp" class="custom-control-input" onchange="hideCol('table',4)" checked>
			<label class="custom-control-label" for="dscp">비고</label>
			-->
	</div>
	<hr>
	<div id="resultSet" style="overflow-x: auto; white-space: nowrap;">
		<div class="hiding">                
			<hr>
			<div id="resultSet" style="overflow-x: auto; white-space: nowrap;">
				<div id="result1" class="result pr-4">
					<!-- 태그들어갈부분 -->
					
				<div class="page-header mb-2"><span class="h5">계산서 1</span>&nbsp;
					<i class="far fa-copy click" onclick="copyTable(this)" aria-hidden="true"></i>&nbsp;&nbsp;
					<i class="fas fa-file-csv click" onclick="downloadCsv(this)" aria-hidden="true"></i>
				</div>
					<table id="tb" class="table table-bordered tlf mb-4">
						<thead>
							<tr>
								<th class="listn">#</th>
								<th>적요</th>
								<th>금액</th>
								<th class="dpLg">비고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="listn">1</td>
								<td class="적요">대출금액<div class="dpSm text-muted small">입력값</div></td>
								<td class="금액"></td>
								<td class="비고 dpLg">입력값</td>
							</tr>
							<tr>
								<td class="listn">2</td>
								<td class="적요">담보가치<div class="dpSm text-muted small">입력값</div></td>
								<td class="금액"></td>
								<td class="비고 dpLg">입력값</td>
							</tr>
							<tr>
								<td class="listn">3</td>
								<td class="적요">소액보증금<div class="dpSm text-muted small">지역별 소액보증금 적용(하단 참조)</div></td>
								<td class="금액"></td>
								<td class="비고 dpLg">지역별 소액보증금 적용(하단 참조)</td>
							</tr>
							<tr>
								<td class="listn">4</td>
								<td class="적요">최우선변제금액<div class="dpSm text-muted small">적용 방수(0) × 0원</div></td>
								<td class="금액"></td><td class="비고 dpLg">적용 방수(0) × 0원</td>
							</tr>
							<tr>
								<td class="listn">5</td>
								<td class="적요">대출금액 등<div class="dpSm text-muted small">대출금 + 보증금 + 선순위채권 등</div></td>
								<td class="금액"></td>
								<td class="비고 dpLg">대출금 + 보증금 + 선순위채권 등</td>
							</tr>
							<tr style="background-color:#eeefff; font-weight:bold">
								<td class="listn">6</td>
								<td class="적요">LTV<div class="dpSm text-muted small">대출금액 등 / 담보가치 × 100</div></td>
								<td class="금액">%</td>
								<td class="비고 dpLg">대출금액 등 / 담보가치 × 100</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div> 
		</div>
	</div>           
			
				<!--ns>-->
			<div class="hiding" style="display: block;">
				
				<div id="basisWrap" class="p-3 my-3 alert-info rounded">
					<h5>계산결과 해설</h5>
					<span id="basis"><p>대략적인 지역 구분을 통해 소액임차보증금을 계산하였습니다. 구, 군, 동에 따라 다를 수도 있으니 아래 지역별 소액임차보증금 표를 보고 부정확한 경우 소액임차보증금을 직접 입력해주세요.</p><p>방 공제는 금융감독원의 은행업감독업무시행세칙에 따라 계산되었습니다. 은행이 선택적으로 적용할 수 있는 규정의 경우 대출 가능액이 최대한으로 나오는 기준을 적용하여 계산하였습니다. 상세한 내용은 <a href="/wiki/방_공제">위키 - 방공제</a><a href="/wiki/방_공제" target="_blank"><sup><i class="far fa-window-restore" title="새창열기" aria-hidden="true"></i><span class="sr-only">새창열기</span></sup></a>를 참고하세요.</p><p>기존 대출, 선순위채권, 임차보증금, 소액보증금 등이 차감되지 않은 온전한 담보가치를 기준으로 계산되었습니다. 해당하는 사항이 전혀 없는지 다시 한번 확인해주시기 바랍니다.</p></span>
				</div>
			</div>
		</div>
	
</div>

<script>

// $('#submit').on('click',function(){
//     $('.hiding').css('display','block');
//     $('#addSubmit').css('display','block');
//     $('#resetSubmit').css('display','block');
//     let table3 = '<div class="page-header mb-2"><span class="h5">계산서 1</span><i class="far fa-copy click" onclick="copyTable(this)" aria-hidden="true"></i>&nbsp;&nbsp;<i class="fas fa-file-csv click" onclick="downloadCsv(this)" aria-hidden="true"></i></div><table id="tb" class="table table-bordered tlf mb-4"><thead><tr><th class="listn">#</th><th>적요</th><th>금액</th><th class="dpLg">비고</th></tr></thead><tbody><tr><td class="listn">1</td><td class="적요">대출금액<div class="dpSm text-muted small">입력값</div></td><td class="금액"></td><td class="비고 dpLg">입력값</td></tr><tr><td class="listn">2</td><td class="적요">담보가치<div class="dpSm text-muted small">입력값</div></td><td class="금액"></td> <td class="비고 dpLg">입력값</td></tr><tr><td class="listn">3</td><td class="적요">소액보증금<div class="dpSm text-muted small">지역별 소액보증금 적용(하단 참조)</div></td><td class="금액"></td><td class="비고 dpLg">지역별 소액보증금 적용(하단 참조)</td></tr> <tr><td class="listn">4</td><td class="적요">최우선변제금액<div class="dpSm text-muted small">적용 방수(0) × 0원</div></td><td class="금액"></td><td class="비고 dpLg">적용 방수(0) × 0원</td></tr><tr><td class="listn">5</td><td class="적요">대출금액 등<div class="dpSm text-muted small">대출금 + 보증금 + 선순위채권 등</div></td><td class="금액"></td><td class="비고 dpLg">대출금 + 보증금 + 선순위채권 등</td></tr><tr style="background-color:#eeefff; font-weight:bold"><td class="listn">6</td><td class="적요">LTV<div class="dpSm text-muted small">대출금액 등 / 담보가치 × 100</div></td><td class="금액">%</td><td class="비고 dpLg">대출금액 등 / 담보가치 × 100</td></tr></tbody></table>';
//     $('#result1').show(table3);
// });

$('#submit').on('click',function(){
	$('.hiding').css('display','block');
	// $('#addSubmit').css('display','block');
	// $('#resetSubmit').css('display','block');
});


// console.log(table);
// let table2 = $('.h5').text();
// console.log(table2);        

// $('.h5').text('계산서'+cnt); 
// let cnt = 1;

	 
// let table = $('#result1').html();
// var n = 2;
// // var n = parseInt($('.h5').text().replace(/[^0-9]/g,''));

// $('#addSubmit').on('click',function(){
//     let table2 = '<div class="page-header mb-2"><span class="h5">계산서 '+n+'</span><i class="far fa-copy click" onclick="copyTable(this)" aria-hidden="true"></i>&nbsp;&nbsp;<i class="fas fa-file-csv click" onclick="downloadCsv(this)" aria-hidden="true"></i></div><table id="tb" class="table table-bordered tlf mb-4"><thead><tr><th class="listn">#</th><th>적요</th><th>금액</th><th class="dpLg">비고</th></tr></thead><tbody><tr><td class="listn">1</td><td class="적요">대출금액<div class="dpSm text-muted small">입력값</div></td><td class="금액"></td><td class="비고 dpLg">입력값</td></tr><tr><td class="listn">2</td><td class="적요">담보가치<div class="dpSm text-muted small">입력값</div></td><td class="금액"></td> <td class="비고 dpLg">입력값</td></tr><tr><td class="listn">3</td><td class="적요">소액보증금<div class="dpSm text-muted small">지역별 소액보증금 적용(하단 참조)</div></td><td class="금액"></td><td class="비고 dpLg">지역별 소액보증금 적용(하단 참조)</td></tr> <tr><td class="listn">4</td><td class="적요">최우선변제금액<div class="dpSm text-muted small">적용 방수(0) × 0원</div></td><td class="금액"></td><td class="비고 dpLg">적용 방수(0) × 0원</td></tr><tr><td class="listn">5</td><td class="적요">대출금액 등<div class="dpSm text-muted small">대출금 + 보증금 + 선순위채권 등</div></td><td class="금액"></td><td class="비고 dpLg">대출금 + 보증금 + 선순위채권 등</td></tr><tr style="background-color:#eeefff; font-weight:bold"><td class="listn">6</td><td class="적요">LTV<div class="dpSm text-muted small">대출금액 등 / 담보가치 × 100</div></td><td class="금액">%</td><td class="비고 dpLg">대출금액 등 / 담보가치 × 100</td></tr></tbody></table>';
//     $('#result1').append(table2);
//     n+=1;
// });

$('#resetSubmit').on('click',function(){
	n=1;
	$('#result1').empty();
	$('#result1').append(table);      
	$('.hiding').css('display','none');
	$('#addSubmit').css('display','none');
	$('#resetSubmit').css('display','none');
});

$(document).ready(function(){
	$('#roomDeduct').change(function(){
		if($('#roomDeduct').is(':checked')){
			$('#onlv').css('display','block');        
			$('#pd').css('display','block');
			$('#rnum').css('display','block');               
		}else{  
			$('.cuscon-input').prop('checked',false);
			$('#pd2').css('display','none');  
			$('#dpi').css('display','none');        
			$('#lr').css('display','none');            
			$('#onlv').css('display','none');        
			$('#pd').css('display','none');
			$('#rnum').css('display','none');                
		}
	});
});

$(document).ready(function(){
	$('#onLease').change(function(){
		if($('#onLease').is(':checked')){
			$('#dpi').css('display','block');        
			$('#lr').css('display','block');               
		}else{
			$('#dpi').css('display','none');        
			$('#lr').css('display','none');
		}
	});
});

$(document).ready(function(){
	$('#customPriorityDeposit').change(function(){
		if($('#customPriorityDeposit').is(':checked')){
			$('#pd2').css('display','block');                               
		}else{
			$('#pd2').css('display','none');               
		}
	});
});

$(document).ready(function(){
	$('#number').change(function(){
		if($('#number').is(':checked')){
			$('.listn').show();
		}else{
			$('.listn').hide();
		}           
	});
});

</script>

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
  </body>
  </html>
