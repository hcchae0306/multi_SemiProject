<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
	<!-- banner button -->
    <!--메인-->
    <style type="text/css">
    	.search-form{
    		width: auto;
            margin-top: 160px;
            text-align: center;
    	}
    	select { height: 30px; }
    	#inputtext{ width: 30%; height: 30px; }
    	.searchbtn { height: 30px; }
        #main-section{
            width: auto;
            margin-top: 160px;
            margin-left: 50px;
            margin-right: 50px;
        }
    </style>
    <!--movie holder-->
    <style type="text/css">
        .movie-container{
            margin-top: 20px;
            font-size: 20px;
            text-align: center;
            vertical-align:top;
            font-weight: bold;
            display: flex;
            flex-wrap: wrap;
        }
        p .content{ maring-bottom: 10px; }
        .emptyresult{ 
        	width:auto; 
        	margin: 0 auto; 
        	flex-direction: column;
        	padding-top: 30px;
        }
        .movierequest{ 
        	width: 200px; height: 80px; 
        	border-style: solid;
        	border-width: 1px ;
        	border-color: #FFFFFF; 
        	padding-top: 10px;
        	padding-bottom: 5px;
       	}
        .movie-holder{
            width: 250px; height: 350px;
            padding-left: 5px;
            padding-right: 5px; 
            padding-top: 10px;
            margin-top: 30px;
        }
        .movie-title{
            width: 230px;
            margin-left: 10px;
            margin-top: 8px;
        }
    </style>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script>
        $(document).ready(function(){
        	let message = "${msg}";
        	console.log(message);
        	
        	if( message != ""  ){
        		alert(message);
        	}else{}
        	
            $(".movie-holder").mouseenter(function(){
                $(this).css({'padding-top': '0px'});
            });
            $(".movie-holder").mouseleave(function(){
                $(this).css({'padding-top': '20px'});
            });
        });
    </script>
</head>
<body>
<!--헤더-->
    <%@ include file="./header2.jsp"%>
    <!--영화 리스트 영역-->
    
    <!-- 영화 포스터 출력 및 링크(movieDetail로 이동) 수정 (고) 22.11.27.17:00-->
    <section id="main-section">
    	<form action="/mymovie/search" method="GET">
	    	<div class="search-form">
	    		<input type="text" name="keyword" id="inputtext" placeholder="검색어를 입력하세요">
	    		<input type="submit" class="searchbtn" value="검색">
	    	</div>
    	</form>
        <div class="movie-container">
            <c:choose>
        		<c:when test="${empty movielist }">
        			<div class="emptyresult">
	        			<p class="content">---- 검색 결과가 없습니다. ----</p>
	        			<br><br>
	        			<form action="/mymovie/search/request" method="POST">
	        				<div class="movierequest">
		        				<input type="text" name="movietitle" placeholder="영화제목">
		        				<input type="text" name="moviedirector" placeholder="감독">
		        				<input type="submit" value="추가 요청">
		        			</div>
	        			</form>
        			</div>
        		</c:when>
        		<c:otherwise>
	        		<c:forEach items="${movielist }" var="dto">
		        		<div class="movie-holder">
			                <a href="/mymovie/movieDetail?movieno=${dto.movieno }"><img width="210" src="${dto.movieimage }"></a>
			                <p class="movie-title">${dto.movietitle }</p>
			            </div>
		        	</c:forEach>
	        	</c:otherwise>
        	</c:choose>
        </div>
    </section>
</body>
</html>