<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
<head>
	<meta charset="UTF-8">
	<meta name = "viewport" content="witdh=device-width, initial-scale=1">
	<title> Uniform - All Posts</title>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<link rel="stylesheet" href="resources/css/bootstrap.css">
<!-- 	<link rel="stylesheet" href="resources/css/bootstrap-grid.css">
	<link rel="stylesheet" href="resources/css/bootstrap-reboot.css">
 -->
 
 <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom fonts for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/clean-blog.min.css">
 

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav" style="background-color: #6799FF;">
		<div class="container">
			<a class="navbar-brand" href="/">Start Bootstrap</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/join">Join</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/form">Form</a>
					</li>
					<c:choose>
						<c:when test="${sessionScope.id ne null}">
							<div class="navbar-header pull-right">
								<span class="navbar-brand"> ${sessionScope.id}님 반갑습니다</span>
								<li class="nav-item"><a class="nav-link" href="/logout">logout</a>
								</li>
							</div>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" href="/login">login</a>
							</li>

						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>


	
<!-- <div style="padding-top:200px; padding-bottom: 100px; text-align: center"><h3> 게시글 목록 </h3></div> -->
<div style="padding-top:200px; padding-bottom: 100px" class="container">
	<font face="Open Sans" size="3">
	<table class="table table-hover">
	    <colgroup>
        <col width="10%"/>
        <col width="*"/>
        <col width="15%"/>
        <col width="20%"/>
    </colgroup>

		<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
			<th>시간</th>
			<th>조회수</th>
		</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(formList) > 0}">
					<c:forEach items="${formList }" var="row">
						<tr>
							<td>${row.POST_ID }</td>
							<td>${row.TITLE }</td>
							<td>${row.WRITER }</td>
							<td>${row.DATE }</td>
							<td>${row.TIME }</td>
							<td>${row.VIEWS }</td>
							
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4"> 조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	</font>
	
	<!-- 페이지네이션 -->
<!-- 	<hr/>
	<div class="text-center">
		<ul class="pagination">
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
		</ul>
	</div> -->
	
</div>

<script src="js/jquery-3.1.1.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> -->
<script src="js/bootstrap.js"></script>
</body>
</html>