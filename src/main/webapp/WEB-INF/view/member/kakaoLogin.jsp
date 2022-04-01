<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>



<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div align="center">
	<ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
          <h1>카카오 로그인</h1>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <h1>카카오 로그아웃</h1>
      </a>
	</li>
</ul>
<form id="form" action="kakaoLoginProcess.do" method="post">
	<input type="hidden" id="kakaoId" name="memberId" >
	<button type="submit"></button>
</form>
</div>
</body>
</html>


<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- īī�� ��ũ��Ʈ -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('41e1ab98f2247787ec82b6241bd8e6d1'); //

  
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          data: {
        	  property_keys: ["kakao_account.email","kakao_account.gender"]
          },
          success: function (response) {
        	  console.log(response);
        	  var data = response;
        	  $('#kakaoId').val(data.id);
	          $('#form').submit();
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
  

function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }	
  }   
  
</script>