<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>GH SHOP</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/insertSearch.css">
<script
	src="${pageContext.request.contextPath}/resources/js/checkBox.js"></script>
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/sub.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cart.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/member.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<script src="https://kit.fontawesome.com/dd43a0e2b4.js"
	crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/check.js"></script>

</head>

<body>
<header id="header">
	<div id="util">
		<div class="innerContent flex">
			<div class="qbtn">
				<ul>
					<li class="tab01"><a href="${pageContext.request.contextPath}/main.jsp">Home<span
							class="icon_bookmark"></span></a></li>
					<li class="tab02"><a
						href="${pageContext.request.contextPath}/notice.jsp">GH SHOP
							CUSTOMER</a></li>
				</ul>
			</div>
			<div class="util_menu">
				<c:choose>
					<c:when test="${sessionScope.user.memId == null}">
						<ul>
							<li><a href="${pageContext.request.contextPath}/login">?????????</a></li>
							<li><a href="${pageContext.request.contextPath}/join">????????????</a></li>
							<li onclick="MSG()"><a
								href="${pageContext.request.contextPath}/join">???????????????</a></li>
							<li onclick="MSG()"><a
								href="${pageContext.request.contextPath}/join">????????????</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul>
							<li><a href="${pageContext.request.contextPath}/logout">????????????</a></li>
							<li><a>${mDTO.memNm}???</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage">???????????????</a></li>
							<li><a href="${pageContext.request.contextPath}/board/flist">????????????</a></li>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</header>
	<div id="container">


		<div class="memw innerContent">
			<div class="member_tit">
				<h1 class="sub_tit">???????????????</h1>
			</div>
			<!--  member_tit -->


			<div id='mypage_quickinfo'>

				<div class='quickContents_first'>
					<p class="userName">
						<span>${mDTO.memNm}</span>???! ???????????????.
					</p>

					<p class="context">???????????? ?????? ????????? ?????????????????? ???????????????.</p>
				</div>
				<div class="quickContentsBox">
					<div class='quickContents'>
						<p class="tit">
							<span class="title">?????? ?????????</span>
						</p>
						<p class="txt">
							<span> <?=number_format($mRs_point);?> 0???
							</span>
						</p>
					</div>

					<div class='quickContents'>
						<p class="tit">
							<span class="title">?????? ??????</span>
						</p>
						<p class="txt">
							<span> <c:out value="${myCouponCount}"/> ???
							</span>
						</p>
					</div>

					<div class='quickContents'>
						<p class="tit">
							<span class="title">?????? ????????????</span>
						</p>
						<p class="txt">
							<span> <?=number_format($mem_goodsQnaCount);?> 0???
							</span>
						</p>
					</div>

					<div class='quickContents quickContents_end'>
						<p class="tit">
							<span class="title">?????? ????????????</span>
						</p>
						<p class="txt">
							<span> <?=number_format($mem_questionCount);?> 0???
							</span>
						</p>
					</div>
				</div>
			</div>