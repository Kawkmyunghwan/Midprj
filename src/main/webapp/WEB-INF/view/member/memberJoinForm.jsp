<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
   href="./assets/fonts/signup/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="./assets/css/signup/style.css">

<!-- JS -->

</head>
<body>

   <div class="main">

      <!-- Sign up form -->
      <section class="signup">
         <div class="container">
            <div class="signup-content">
               <div class="signup-form">
                  <h2 class="form-title">회원가입</h2>
                  <form id="frm" action="memberJoin.do" onsubmit="return formCheck()"
            method="post">
                     <button  type="button" id="checkId"
                        value="No" onclick="isIdCheck()" style="float: right;">중복체크</button>
                     <div class="form-group">
                        
                        <label for="name">아이디</label> 
                        <input type="text" name="memberId" id="memberId" required="required"  />
                     </div>
                     <div class="form-group">
                        <label for="password">비밀번호</label> <input type="password"
                           name="memberPassword" id="memberPassword"/>
                     </div>
                     <div class="form-group">
                        <label for="password">비밀번호 확인</label> <input type="password"
                           name="memberPassword1" id="memberPassword1" />
                     </div>
                     <div class="form-group">
                        <label for="re-pass">이 름</label> <input type="text"
                           name="memberName" id="memberName"  />
                     </div>
                     <div class="form-group">
                        <label for="re-pass">전화번호</label> <input type="text"
                           name="memberPhone" id="memberPhone"  />
                     </div>
                     <div class="form-group">
                        <label for="re-pass">이메일</label> <input type="email"
                           name="memberEmail" id="memberEmail"  />
                     </div>

                     <div class="btn-group" style="position: static; display: inline; width: auto;">

								<div class="form-check">
									<input class="form-check-input" type="checkbox"name="favorite" value="IT" style="position: static; display: inline; width: auto;"> 
									<label class="form-check-label" for="IT" style="position: static; display: inline; width: auto;">IT</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" name="favorite" value="기획" style="position: static; display: inline; width: auto;">
									<label class="form-check-label" for="기획" style="position: static; display: inline; width: auto;">기획</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" name="favorite" value="건축" style="position: static; display: inline; width: auto;">
									<label class="form-check-label" for="건축" style="position: static; display: inline; width: auto;">건축</label>
								</div>

                     </div>

							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="회원가입" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="./assets/img/signup/signin-image.jpg"
								alt="sing up image">
						</figure>
						<div class="social-wrap">
									<p class="or">
									<div class="w-100 text-center">
										<p class="mt-4">
											이미 회원이신가요? <a href="loginPage.do">로그인으로</a>
										</p>
									</div>
								</div>
					</div>
				</div>
			</div>
		</section>
	</div>
<script type="text/javascript">
      function isIdCheck() {
         $.ajax({
            url : "ajaxMemberIdCheck.do",
            type : "post",
            data : {
               "str" : $('#memberId').val()
            },
            dataType : "text",
            success : function(result) {
               if (result == '1') {
                  alert("사용 가능한 아이디입니다.");
                  $("#checkId").attr("disabled", "disabled");
                  $("#checkId").val('Yes');
                  $("#memberPassword").focus();
               } else {
                  alert("사용 불가능한 아이디입니다.");
                  $("#memberId").val('');
                  $("#memberId").focus();
               }
               ;
            }
         });
      }

      function formCheck() {
         if ($("#checkId").val() != 'Yes') {
            alert("아이디 중복체크를 해주세요.");
            return false;
         }

         if ($("#memberPassword").val() != $("#memberPassword1").val()) {
            alert("패스워드가 일치하지 않습니다.")
            $("#memberPassword").val('');
            $("#memberPassword1").val('');
            $("#memberPassword").focus();
            return false;
         }

         return true;
      }
   </script>
   <script src="js/jquery-3.6.0.min.js"></script>
   <script src="./assets/js/signup/main.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>