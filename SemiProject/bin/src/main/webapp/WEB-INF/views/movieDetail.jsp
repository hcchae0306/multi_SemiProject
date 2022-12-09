<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <title>MOVIE DETAIL</title>
    
    <!--유튜브API-->
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script type="text/javascript">
    
    window.onload=function(){
    	
       var work = '${dto.movietitle}'+" 예고편";
        $.ajax({
            type: "GET",
            url: "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResult=1&q="+work+"&type=video&order=viewCount&key=키",
            success: function(response){
              console.log(response);
              console.log(response.items[0].id.videoId);
              $("#moive-player").append('<iframe width="650" height="400" src="https://www.youtube.com/embed/'+response.items[0].id.videoId+'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
);
            }
          })
    }
    </script>
    <style type="text/css">
        .poster{
            width: 20%;
            height : 90%;
            float:left;
        }
       
        .detail{
            width: 20%;
            height: 90%;
            float:right;
        }
        #movie-player{
        	width: 35%;
            height: 90%;
            float:left;
        }
    </style>

</head>

<!-- moiveDetail -->

  <body>
<!--헤더-->
    <%@ include file="./header.jsp"%>
<br>
<hr color="#6BCDA5" size="5px">
<section id="main-section">
    <div class="poster">
        <a href="#"><img width="340" src=${dto.movieimage}></a><br>
        <a href="#"><p class="movie-title" style="font-size: 25px;">${dto.movietitle}</p></a>
    </div>
   
    <div id="moive-player">
    	
    </div>
     

    <div class="detail">
    <div>
        <p>제목 : ${dto.movietitle}</p>
        <p>감독 : ${dto.moviedirector}</p>
        <p>장르 : ${dto.moviegenre}</p>
        <p>개봉일 : ${dto.moviedate}</p>
    </div>
    <br>
    
    <br>
    <div>
    <button style="color:white; background-color: #6BCDA5; width:100px; height:30px;" onclick="location.href='/mymovie/reviewlist'">한줄평</button>
    </div>
    </div>
</div>

</section>

    

  </body>
</html>