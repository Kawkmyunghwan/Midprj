<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
          <h1>īī�� �α���</h1>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <h1>īī�� �α׾ƿ�</h1>
      </a>
	</li>
</ul>
<form id="form" action="home.do" method="post">
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
Kakao.init('41e1ab98f2247787ec82b6241bd8e6d1'); //�߱޹��� Ű �� javascriptŰ�� ������ش�.
console.log(Kakao.isInitialized()); // sdk�ʱ�ȭ�����Ǵ�
//īī���α���

   //īī���α���
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
  
//īī���α׾ƿ�  
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