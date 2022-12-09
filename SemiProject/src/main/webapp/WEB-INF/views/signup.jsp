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
</head>
<body>
  <form action="/member/signup" method="post">
    <section class="vh-100 gradient-custom">
      <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-12 col-md-8 col-lg-6 col-xl-5">
            <div class="card bg-dark text-white" style="border-radius: 1rem;">
              <div class="card-body p-5 text-center">
    
                <div class="mb-md-5 mt-md-4 pb-5">
    
                  <h2 class="fw-bold mb-2 text-uppercase">Sign Up</h2>
                  <p class="text-white-50 mb-5">Please fill in the blanks!</p>
    
                  <div class="form-outline form-white mb-4">
                    <input type="email" id="typeEmailX" class="form-control form-control-lg" name="memberid"/>
                    <label class="form-label" for="typeEmailX">ID</label>
                  </div>
    
                  <div class="form-outline form-white mb-4">
                    <input type="password" id="typePasswordX" class="form-control form-control-lg" name="memberpw"/>
                    <label class="form-label" for="typePasswordX">Password</label>
                  </div>
  
                  <div class="form-outline form-white mb-4">
                    <input type="text" id="typePasswordX" class="form-control form-control-lg" name="membername"/>
                    <label class="form-label" for="typePasswordX">Name</label>
                  </div>
  
                  <div class="form-outline form-white mb-4">
                    <input type="text" id="typePasswordX" class="form-control form-control-lg" name="memberphone"/>
                    <label class="form-label" for="typePasswordX">Phone</label>
                  </div>
    
    
                  <input class="btn btn-outline-light btn-lg px-5" type="submit" value="Sign Up">
    
                </div>
    
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </form>
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</body>
</html>