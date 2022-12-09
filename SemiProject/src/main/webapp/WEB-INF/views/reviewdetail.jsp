<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
    textarea{
	    margin-left: 370px;
	    font-size: 20px;
	}
   #myform fieldset{
	   display: inline-block; 
	   border: 0; 
	}
   #myform input[type=radio]{ display: none;  }
   #myform label{
       font-size: 3em;
       color: transparent;
       text-shadow: 0 0 0 #f0f0f0; 
   }
   #myform label:hover{ text-shadow: 0 0 0 rgb(186, 186, 0); }
   #myform label:hover ~ label{ text-shadow: 0 0 0 rgb(186, 186, 0); }
   #myform fieldset{
       display: inline-block; 
       direction: rtl; 
       border: 0; 
   }
   #myform input[type=radio]:checked ~ label{ text-shadow: 0 0 0 rgb(186, 186, 0); }
   #myform{ margin-left: 560px; }
   #smbt{ margin-left: 950px; }
   .hjhead{
    color: #3cd1a3;
    margin-left: 380px;
	}
    .reviewname{ color:#3cd1a3; }
    .mover{ margin-left: 370px; }
</style>
</head>
<body>
<!--헤더-->
    <%@ include file="./header.jsp"%>
<!-- 리뷰디테일 -->
    <br><br><br><br><hr><br><br>
    <div class="hjhead"><h2>리뷰 및 평점 등록</h2></div><br>
        <div class="reviewWrite">
            <form action="/mymovie/insertform" method="post">
            <input type="hidden" value="${reviewno }">
	            <div class="reviewname">
	                <div class="mover">
	               	    <div>영 화: </div>
	                    <div><input type="text" name="movietitle" placeholder="영화를 입력해주세요."></div><br>
	                    <div>이 름: </div>
	                    <div><input type="text" name="membername" placeholder="이름을 입력해주세요."></div><br>
	                    <div>아이디: </div>
	                    <div><input type="text" name="memberid" placeholder="아이디를 입력해주세요."></div>
	            	</div>
	            <br><br>
	        	</div>
	            <div>
	                <textarea rows="5" cols="70"  placeholder="리뷰를 작성해주세요." name="reviewcontent"></textarea>
	                <input id="smbt" type="submit" value="한 줄 리뷰 작성">
	            </div>
	            <div id="myform">
		           <fieldset>
		               <input type="radio" name="reviewstar" value="5" id="rate1"><label for="rate1">⭐</label>
		               <input type="radio" name="reviewstar" value="4" id="rate2"><label for="rate2">⭐</label>
		               <input type="radio" name="reviewstar" value="3" id="rate3"><label for="rate3">⭐</label>
		               <input type="radio" name="reviewstar" value="2" id="rate4"><label for="rate4">⭐</label>
		               <input type="radio" name="reviewstar" value="1" id="rate5"><label for="rate5">⭐</label>
		           </fieldset>
       			</div>
       		</form>
       </div>
       <br><br>  
</body>
</html>