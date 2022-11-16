<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<header class="header-top bg-grey">
	<div class="container">
		<div class="columns is-gapless">
			<div class="column is-12">
				<nav class="navbar navigation">
					<div class="navbar-brand">
						<a class="navbar-item" href="index.html">
							<img src="<%=request.getContextPath() %>/resource/img/header/logo.png" alt="">
						</a> 
						<a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="menu1"> 
						<span aria-hidden="true"></span> 
						<span aria-hidden="true"></span> 
						<span aria-hidden="true"></span>
						</a>
					</div>
					<div id="menu1" class="navbar-menu">
						<div class="navbar-start">
							<div class="navbar-item has-dropdown is-hoverable">
								<a class="navbar-link" href="#!">신안관광</a>
								<div class="navbar-dropdown">
									<a class="navbar-item" href="">1</a> 
									<a class="navbar-item" href="">2</a> 
									<a class="navbar-item" href="">3</a>
								</div>
							</div>

							<div class="navbar-item has-dropdown is-hoverable">
								<a class="navbar-link" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">공지사항</a>
								<div class="navbar-dropdown">
									<a class="navbar-item" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">공지사항</a> 
									<a class="navbar-item" href="<%=request.getContextPath() %>/">....</a> 
									<a class="navbar-item" href="<%=request.getContextPath() %>/">....</a>
								</div>
							</div>

							<div class="navbar-item">
								<a class="navbar-link" href="about.html">About</a>
							</div>
							<div class="navbar-item">
								<a class="navbar-link" href="fashion.html">Category</a>
							</div>
							<div class="navbar-item">
								<a class="navbar-link" href="contact.html">Contact</a>
							</div>
						</div>
						<div class="navbar-end">
							<div class="navbar-item">
								<c:if test="${empty sid }">
									<div class="buttons">
										<a href="${path2 }/user/agree.jsp" class="button is-primary"> <strong>회원가입</strong>
										</a> <a href="${path2 }/user/login.jsp" class="button is-light"> 로그인 </a>
									</div>
								</c:if>
								<c:if test="${not empty sid }">
									<div class="buttons">
										<a href="${path2 }/UserInfoCtrl.do" class="button is-primary"> <strong>회원정보</strong>
										</a> <a href="${path2 }/UserLogoutCtrl.do" class="button is-light"> 로그아웃 </a>
										<c:if test='${sid.equals("admin")}'>
											<a href="${path2 }/AdminCtrl.do" class="button is-danger"> <strong>Admin</strong>
											</a>
										</c:if>
									</div>
								</c:if>
							</div>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
</header>