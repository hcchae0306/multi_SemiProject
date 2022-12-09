<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--기본 초기화-->
    <style type="text/css">
        *{
            margin: 100; padding: 50;
            background-color: #121319;
            color: #f5f7ff;
            font-family: sans-serif;
        }
        a{ text-decoration: none;  
            color: lightgray;
            cursor: pointer;
        }
        img{ border: 0; }
        li{ display: inline-block; }
    </style>
    <!--헤더-->
    <style type="text/css">
        #main-header{
            height: 100px;
            position: relative;
            margin-top: 100px;
        }
        .header-title{
            position: absolute;
            width: 400px; height: 100px;
            left: 50%; 
            margin-left: -150px;
        }
        .header-menu{
            float: right; 
            margin-top: 10px;
            margin-right: 20px;
        }
        ul{
            float: left; width: 80px; text-align: center; margin-right: 10px;
        }
    </style>
</head>
<body>
<!--헤더-->
    <header id="main-header">
        <div class="header-title">
            <a href="/mymovie/main"><img width="400" src="/image/logo.png"></a>
        </div>
        <nav class="header-menu">
            <ul>
                <li><a href="/mymovie/notice/list">공지사항</a></li>
            </ul>
            <ul>
                <li><a href="/member/mypage">마이페이지</a></li>
            </ul> 
        </nav>
    </header>
</body>
</html>