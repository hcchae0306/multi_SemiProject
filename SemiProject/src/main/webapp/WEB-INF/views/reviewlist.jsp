<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
    .wrapper{
        width: 1300px;
        margin: 0 auto;
        text-align: center;
        box-sizing: border-box;
    }
    .listhead > div{ display: inline-block; }
    .hjlist .mn{width: 10%; text-align: left;}
    .hjlist .userid{ width: 10%; text-align: right;}
    .hjlist .hj1{ width: 40%; }
    .hjlist .hj2{ width: 15%; }
    .hjlist .hj3{ width: 11%; }
    .hjlist .hj4{ width: 11%; }
    .listhead{ color: #3cd1a3; }
    .board > div{ display: inline-block; }
    .board{ color: lightgray; }
    .board .mn0{ width: 12%; text-align: left;}
    .board .bd0{ width: 10%; }
    .board .bd1{ width: 39%; }
    .board .bd2{ width: 12%; }
    .board .bd3{ width: 12%; }
    .board .bd4{ width: 10%; }
    .board .bd5{ width: 5%; margin-left: 1040px; margin-top: 20px; }
    .bd{ margin-left: 30px; }
    .bd2{
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .bd3{ color: rgb(186, 186, 0); }
    #nolikebtn{ background-color: red; }
	.writebt{ margin-left: 1250px; }
</style>
<script type="text/javascript" src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#likebtn").click(function(){
			let reviewno = $(this).attr('idx');
			let memberid = '${memberid}';
			
			$.ajax({
	            url :'/mymovie/likeinsert',
	            type :'POST',
	            data : { 'memberid' : memberid, 'reviewno' : reviewno }
	        });
			alert("추천 성공");
	    	window.location.reload();
		});
		
		$("#nolikebtn").click(function(){
			let reviewno = $(this).attr('idx');
			let memberid = '${memberid}';
			
			$.ajax({
	            url :'/mymovie/likedelete',
	            type :'GET',
	            data : { 'memberid' : memberid, 'reviewno' : reviewno }
	        });
			alert("취소 성공");
	    	window.location.reload();
		});
	});
</script>
</head>
<body>
   <!--헤더-->
    <%@ include file="./header.jsp"%>
   <!-- 리뷰리스트 -->
    <br><br><br><br><hr><br>
    <div class="hjreview">
        <br><br><br><br>
        <div class="writebt">
    	<input type="button" value="한 줄 리뷰 작성하기" onclick="location.href='/mymovie/reviewinsert'">
    	</div><br><br>
    </div>
    <div class="wrapper">
	    <div class="hjlist">
	        <div class="listhead">
	        	<div class="mn"><b>영화</b></div>
		        <div class="userid"><b>이 름</b></div>
		        <div class="hj1"><b>한줄평</b></div>
		        <div class="hj2"><b>별점</b></div>
		        <div class="hj3"><b>작성 날짜</b></div>
		        <div class="hj4"><b>좋아요 수</b></div>
	    	</div>
	        <br><hr>
	        <c:forEach items="${reviewlist }" var="dto">
	        <div class="board">
	        	<div class="mn0">${dto.movietitle }</div>
	            <div class="bd0">${dto.membername }</div>
	            <div class="bd1">${dto.reviewcontent }</div>
	            <c:choose>
	            	<c:when test="${dto.reviewstar ==1}" ><div class="bd2">⭐</div> </c:when>
	            	<c:when test="${dto.reviewstar ==2}" ><div class="bd2">⭐⭐</div> </c:when>
	            	<c:when test="${dto.reviewstar ==3}" ><div class="bd2">⭐⭐⭐</div> </c:when>
	            	<c:when test="${dto.reviewstar ==4}" ><div class="bd2">⭐⭐⭐⭐</div> </c:when>
	            	<c:otherwise ><div class="bd2">⭐⭐⭐⭐⭐</div> </c:otherwise>
	            </c:choose>
	            <div class="bd3"><fmt:formatDate pattern="yy-MM-dd" value="${dto.reviewdate }"/></div>
	            <div class="bd4">${dto.likecount }</div>
	            <div class="bd5">
	            <c:choose>
	            	<c:when test="${dto.likecount ==0}">
	            		<input type="button" value="추 천" id="likebtn" idx="${dto.reviewno }">
	            	</c:when>
	            	<c:otherwise>
	            		<input type="button" value="추 천" id="nolikebtn" idx="${dto.reviewno }">
	            	</c:otherwise>
	            </c:choose>
	            </div>
	            <hr>
	        </div>
	        </c:forEach>
	    </div>
	    <br><br>
	    <br><br><br><br><br><br><br><br><br><br><br><br><br>
	    <br><br><br><br><br><br><br><br><br><br><br><br><br>
    </div>
</body>
</html>