<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- 공지사항 -->
    <style type="text/css">
        h2{ 
            margin-left: 100px;
            margin-top: 100px;
            color : rgb(107, 205, 165);
        }
        table {
            border-collapse: collapse;
            border-spacing: 0;
            text-align: center;
        }
        .board-table{
            font-size: 18px;
            margin-left: 200px;
            margin-top: 50px;
            width: 80%;
            border-top: 3px solid lightgray;
            border-bottom: 3px solid lightgray;
        }
        .board-table a {
            display: inline-block;
            line-height: 1.4;
            word-break: break-all;
            vertical-align: middle;
        }
        .board-table a:hover {
            text-decoration: underline;
        }
        .board-table .th-date {width: 200px;}
        .board-table th, .board-table td {padding: 14px 0;}
        .board-table tbody td {
            padding-left: 28px;
            padding-right: 14px;
            border-top: 2px solid lightgray;
        }
    </style>
</head>
<body>
<!--헤더-->
    <%@ include file="./header.jsp"%>
    <!--공지사항-->
    <h2>공지사항</h2>
    <div id="board-list">
        <div class="container">
            <table class="board-table">
                <thead>
                <tr>
                    <th scope="col" class="th-date">날 짜</th>
                    <th scope="col" class="th-title">제 목</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${empty noticelist }">
                        <tr>
                            <td colspan="2" align="center">------ 작성된 글이 없습니다 ------</td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach items="${noticelist }" var="dto">
                            <tr>
                                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${dto.boarddate }"/></td>
                                <td><a href="/mymovie/notice/detail?boardno=${dto.boardno }">${dto.boardtitle }</a></td>
                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                <tr>
                    <td colspan="2" align="right">
                        <input type="button" value="WRITE" onclick="location.href='/mymovie/notice/insertform'">
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>