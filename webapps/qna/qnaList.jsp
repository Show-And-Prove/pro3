<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>QnA</title>
    <jsp:include page="/head.jsp" />
  </head>
  <body>
  <jsp:include page="/header.jsp" />
  <section class="section">
    <div class="container">
    <!--  -->
      <h1 class="title">질문 및 답변</h1>
		<table class="table">
		  <thead>
		    <tr>
		      <th><abbr title="No">No</abbr></th>
		      <th><abbr title="Title">Title</abbr></th>
		      <th><abbr title="Author">Author</abbr>
		      <th><abbr title="Result">RegDate</abbr></th>
		    </tr>
		  </thead>
		   <tbody>
		   <c:forEach items="${list }" var="dto" varStatus="status">
		    <tr>
		      <td>
		      <c:if test></c:if>
		      ${status.count }
		      </td>
		      <td><a href="${path1 }/GetQnaCtrl.do?no=${dto.no }">${dto.title }</a></td>
		      <td>
		      	<fmt:parseDate value="${dto.regDate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
		      	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
		      </td>	
		    </tr>
		    </c:forEach>
			<c:if test="${empty list }">
		    <tr>
		    	<td colspan="3">해당 데이터 목록이 없습니다.</td>
		    </tr>
		    </c:if>
		  </tbody>
		</table>
		<div class="buttons">
		  <a href="${path1 }/qna/addQna.jsp" class="button is-dark">글 등록</a>
		</div>
    </div>
    <!--  -->
    <h2 class="title">질문 및 답변 목록</h2>
			<table class="table">
				<thead>
					<tr>
						<th>연번</th><th>제목</th><th>작성자</th><th>작성일</th>
					</tr>
				</thead>
				<tbody>
				<tr>
					//질문 답변 구분
					<td>
						<%
							if(vo.getLev()==0) {
								cnt++;
								out.println("<span>"+cnt+"</span>");
							}
						%>
					</td>
					//비밀글 열람자 제한
					<td>
					<% 
						if(vo.getLev()==0) {
							if(vo.getSec().equals("Y")) {
								if(sid.equals(vo.getAuthor()) || sid.equals("admin")){
					%>
									<a href="<%=request.getContextPath() %>/GetQnaDetailCtrl.do?no=<%=vo.getNo() %>"><%=vo.getTitle() %></a>
					<%
								} else {
					%>	
									<span><%=vo.getTitle() %></span>
					<%
								}
							} else if(vo.getSec().equals("N") && sid!="guest"){
					%>	
									<a href="<%=request.getContextPath() %>/GetQnaDetailCtrl.do?no=<%=vo.getNo() %>"><%=vo.getTitle() %></a>
					<%
							} else {
					%>	
									<span><%=vo.getTitle() %></span>
					<%
							}
					%>
					<% 
						} else {
							if(vo.getSec().equals("Y")) {
								if(sid.equals(vo.getAuthor()) || sid.equals("admin")){
					%>
									<a href="<%=request.getContextPath() %>/GetQnaDetailCtrl.do?no=<%=vo.getNo() %>"><%=vo.getTitle() %></a>
					<%
								} else {
					%>
									<span style="padding-left:60px;"><%=vo.getTitle() %></span>				
					<%
								}		
							} else if(vo.getSec().equals("N") && sid!="guest"){
					%>
								<a href="<%=request.getContextPath() %>/GetQnaDetailCtrl.do?no=<%=vo.getNo() %>" style="padding-left:60px;"><%=vo.getTitle() %></a>						
					<%
							} else {
					%>
						 		<span style="padding-left:60px;"><%=vo.getTitle() %></span>
					<%
							}
						} 
					%>
					</td>
					<td><%=vo.getAuthor() %></td>
					<td><%=date %></td>
				</tr>
				<% } %>	
				</tbody>
			</table>
			<% if(sid!=null || sid.equals("admin")) { %>
			<div class="btn-group">
				<a href="<%=request.getContextPath() %>/qna/qnaWrite.jsp" class="btn btn-danger">글 등록</a>
			</div>
			<% } %>
  </section>
  <jsp:include page="/footer.jsp"></jsp:include>
  </body>
</html>