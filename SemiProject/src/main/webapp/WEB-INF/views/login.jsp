<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style type="text/css">
      .gradient-custom {
        /* fallback for old browsers */
        background: #121319 ;
        
        /* Chrome 10-25, Safari 5.1-6 */
        background: #121319 ;
        
        /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        background: #121319 
      }
    </style>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#loginChk").hide();
	});
	function login(){
		let memberid = $("#memberid").val().trim();
		let memberpw = $("#memberpw").val().trim();
		
		let loginVal = {
			"memberid":memberid,	
			"memberpw":memberpw
		};
		
		if(memberid==null || memberid=="" || memberpw==null || memberpw==""){
			alert("id 및 pw를 확인해 주세요");
		}else{
			$.ajax({
				url:"/member/login",
				type:"post",
				data:JSON.stringify(loginVal),	
				contentType:"application/json",	
				dataType:"json", 
				success:function(msg){
					console.log(msg);
					if(msg.check==true){
						location.href="/mymovie/main";
					}else{
						$("#loginChk").show();
						$("#loginChk").html("ID 혹은 PW가 잘못 되었습니다.")
					}
				},
				error:function(){
					alert("통신 실패");
				}
			});
		}
		
	}
</script>
</head>
<body>
    <section class="vh-100 gradient-custom">
      <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-12 col-md-8 col-lg-6 col-xl-5">
            <div class="card bg-dark text-white" style="border-radius: 1rem;">
              <div class="card-body p-5 text-center">
    
                <div class="mb-md-5 mt-md-4 pb-5">
    
                  <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                  <p class="text-white-50 mb-5">Please enter your login and password!</p>
    
                  <div class="form-outline form-white mb-4">
                    <input type="email" id="memberid" class="form-control form-control-lg"/>
                    <label class="form-label" for="memberid">Email</label>
                  </div>
    
                  <div class="form-outline form-white mb-4">
                    <input type="password" id="memberpw" class="form-control form-control-lg"/>
                    <label class="form-label" for="memberpw">Password</label>
                  </div>
    
                  <button class="btn btn-outline-light btn-lg px-5" onclick="login();">Login</button>
    
                </div>
    
                <div>
                  <p class="mb-0">Don't have an account? <a href="/member/signupform" class="text-white-50 fw-bold">Sign Up</a>
                  </p>
                </div>
                <div id="loginChk"></div>
    
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</body>
</html>