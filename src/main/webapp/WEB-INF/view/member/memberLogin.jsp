<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script type="text/javascript">
   function formCheck() {
      if (frm.memberId.value == "") {
         alert("아이디를 입력하세요.");
         frm.memberId.focus();
         return false;
      }

      if (frm.memberPassword.value == "") {
         alert("패스워드를 입력하세요.");
         frm.memberPassword.focus();
         return false;
      }
      frm.submit();
   }
</script>  

<html>
<head>
<title>로그인</title>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
   href="https://fonts.googleapis.com/css?family=Lato:400,500,700&display=swap"
   rel="stylesheet">

<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="./assets/css/login/style.css">

<script src="js/login/jquery.min.js"></script>
<script src="js/login/popper.js"></script>
<script src="js/login/bootstrap.min.js"></script>
<script src="js/login/main.js"></script>


</head>
<body>
     <section class="ftco-section">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-5">
               <h2 class="heading-section">JOB FINDER</h2>
            </div>
         </div>
         <div class="row justify-content-center">
            <div class="col-md-12 col-lg-10">
               <div class="wrap d-md-flex">
                  <div class="img"
                     style="background-image: url(assets/img/login/login1.png);"></div>
                  <div class="login-wrap p-4 p-md-5">
                     <div class="d-flex">
                        <div class="w-100">
                           <h3 class="mb-4">로그인</h3>
                        </div>
                        <div class="w-100"></div>
                     </div>
                     <div class="login-form">
                        <form id="frm" name="frm" action="memberLogin.do" method="post">

                           <div class="form-group mb-3">
                              <label class="label" for="name">이름</label> <input type="text"
                                 id="memberId" name="memberId" class="form-control"
                                 placeholder="Username" required>
                           </div>
                           <div class="form-group mb-3">
                              <label class="label" for="password">비밀번호</label> <input
                                 type="password" id="memberPassword" name="memberPassword"
                                 class="form-control" placeholder="Password" required>
                           </div>
                           <div class="form-group">
                              <input type="button" onclick="formCheck()"
                                 class="form-control btn btn-primary rounded submit px-3"
                                 value="로그인">
                           </div>

                           <div>
                              <a href="./memberJoinForm.do">회원가입</a><br> 
                              <a href="./findId.do">아이디찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <a href="./findPw.do">비밀번호찾기</a><br>
                                     <a href="naverLogin.do" id="naverIdLogin_loginButton" >네이버 로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                     <a href="kakaoLogin.do" id="naverIdLogin_loginButton" >카카오 로그인</a>
                           </div>
                        </form>
                     </div>

                  </div>
               </div>
            </div>
         </div>
      </div>

   </section>
 
</body>
</html>       
    <!-- Register Form Section End -->