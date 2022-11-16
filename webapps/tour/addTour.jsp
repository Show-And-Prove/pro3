<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>공지사항 글 등록</title>
    <jsp:include page="../head.jsp" />
  </head>
  <body>
  <jsp:include page="../header.jsp" />
  <section class="section">
    <div class="container">
      <h1 class="title">글 등록하기</h1>
      	<form action="${path1 }/AddNoticeCtrl.do" method="post">
			<table class="table">
			   <tbody>
			    <tr>
			      <th><label for="title">제목</label></th>
			      <td><input type="text" class="input" maxlength="120" name="title" id="title" placeholder="제목 입력" required /></td>
			    </tr>
			    <tr>
			      <th><label for="content">내용</label></th>
			      <td><textarea rows="8" cols="100" name="content" id="content" class="textarea" required></textarea></td>
			    </tr>
			  </tbody>
			</table>
			<div class="buttons">
			  <button type="submit" class="button is-success">등록</button>
			  <button type="reset" class="button is-warning">취소</button>
			  <a href="${path1 }/GetNoticeListCtrl.do" class="button is-info">목록</a>
			</div>
		</form>
    </div>
  </section>
  
  <script>
  	function changeTourNo(){
  		var cate = document.frm1.cate.value;
  		if(cate == ""){
  			alert("분류를 선택하지 않으셨습니다.");
  			document.frm1.cate.focus();
  			return;
  		}
  		$.ajax({
  			url:"${path1 }/NoLoadCtrl.do",
  			type:"post",
  			dataType:"json",
  			success:function(data){
  				console.log(data.no);
  				$("#tourno").val(cate + data.no);
  			}
  		})
  	}
  </script>
  
  <jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>