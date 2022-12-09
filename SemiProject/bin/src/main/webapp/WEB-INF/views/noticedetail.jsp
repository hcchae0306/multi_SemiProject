<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        .board-table th{
            padding: 14px 0; 
            border-top: 2px solid lightgray;
            border-bottom: 2px solid lightgray;
            padding-right: 50px;
            }
        .board-table td{
            padding: 14px 0; 
            text-align: left; 
            border-top: 2px solid lightgray;
            border-bottom: 2px solid lightgray;
        }
        textarea{ border: 0px;}
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
                <tr>
                    <th>제목</th>
                    <td>${dto.boardtitle }</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>${dto.membername }</td>
                    <th>날짜</th>
                    <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${dto.boarddate }"/></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td><textarea rows="10" cols="80" readonly="readonly">${dto.boardcontent }</textarea></td>
                </tr>
                <tr>
					<td colspan="4" align="right">
						<input type="button" value="수정" onclick="location.href='/mymovie/notice/updateform?boardno=${dto.boardno}'">
						<input type="button" value="삭제" onclick="location.href='/mymovie/notice/delete?boardno=${dto.boardno}'">
						<input type="button" value="목록" onclick="location.href='/mymovie/notice/list'">
					</td>
				</tr>
            </table>
        </div>
    </div>
</body>
</html>