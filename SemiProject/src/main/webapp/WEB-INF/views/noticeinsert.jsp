<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <form action="/mymovie/notice/insert" method="post">
        <table class="board-table">
        	<tr>
                <th>작성자ID</th>
                <td><input type="text" name="memberid"></td>
            </tr>
            <tr>
                <th>제목</th>
                <td><input type="text" name="boardtitle"></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><textarea rows="10" cols="80" name="boardcontent"></textarea></td>
            </tr>
            <tr>
                <td colspan="2" align="right">
					<input type="submit" value="등록">
					<input type="button" value="취소" onclick="location.href='/mymovie/notice/list'">
				</td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>