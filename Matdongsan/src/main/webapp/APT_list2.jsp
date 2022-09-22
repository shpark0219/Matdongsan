<%@page import="com.smhrd.domain.LandDTO"%>
<%@page import="com.smhrd.domain.LandDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%>   
<!DOCTYPE html>
<html lang="en" >

<head>

  <meta charset="UTF-8">
  
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />


  <title>CodePen - Pseudo-classes Example</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
  
<style>
body {
  color: #666;
  font: 14px/24px "Open Sans", "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", Sans-Serif;
}
table {
  border-collapse: separate;
  border-spacing: 0;
  width: 100%;
}
th,
td {
  padding: 6px 15px;
}
th {
  background: #42444e;
  color: #fff;
  text-align: left;
}
tr:first-child th:first-child {
  border-top-left-radius: 6px;
}
tr:first-child th:last-child {
  border-top-right-radius: 6px;
}
td {
  border-right: 1px solid #c6c9cc;
  border-bottom: 1px solid #c6c9cc;
}
td:first-child {
  border-left: 1px solid #c6c9cc;
}
tr:nth-child(even) td {
  background: #eaeaed;
}
tr:last-child td:first-child {
  border-bottom-left-radius: 6px;
}
tr:last-child td:last-child {
  border-bottom-right-radius: 6px;
}
</style>

  
  
  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<body translate="no" >
		<%
		 String input =(String)session.getAttribute("SearchInput");
		%>
		<%=input %>
		<%		
			LandDAO dao = new LandDAO();
	
			List<LandDTO> Landlist = dao.selectAllLand(input);
		%>		
				<!-- 검색창 -->
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3" data-aos="fade-up" data-aos-delay="200">
						<input id="searchInput" type="text" class="form-control px-4" placeholder="아파트명 또는 지역명을 검색해주세요." value = "<%=input %>">
						<button type="button" class="btn btn-primary" onClick="location.href='kakaomap.jsp'">Q</button>
						<br>
						<br>
					</form>

  <table>
  <thead>
    <tr>
      <th>Number</th>
      <th>Player</th>
      <th>Position</th>
      <th>Height</th>
      <th>Weight</th>
    </tr>
  </thead>
  <tbody>
	<%
	int landnum =0;
	for(LandDTO L : Landlist){ 		
		landnum++;
	%>  
    <tr>
      <td><%=landnum %></td>
      <td><a href="SelectLand?aptNo=<%=L.getApt_no()%>"><%=L.getApt_name() %></a></td>
      <td><%=L.getApt_addr() %> <%=L.getApt_addr2() %></td>
      <td><%=L.getApt_addr2() %></td>  
    </tr>
    <%} %>	
	
    
  </tbody>
</table>
<a href="login.jsp" class="button next scrolly">되돌아가기</a>	  
  
  


  <script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-4793b73c6332f7f14a9b6bba5d5e62748e9d1bd0b5c52d7af6376f3d1c625d7e.js"></script>
</body>

</html>