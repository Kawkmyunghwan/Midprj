<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
form {
  margin: auto;
  position: relative;
  width: 450px;
  height: 550px;
  font-family: Tahoma, Geneva, sans-serif;
  font-size: 14px;
  font-style: italic;
  line-height: 24px;
  font-weight: bold;
  color: #09C;
  text-decoration: none;
  border-radius: 10px;
  padding: 10px;
  border: 1px solid #999;
  border: inset 1px solid #333;
  -webkit-box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
  box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
}

input {
  width: 375px;
  display: block;
  border: 1px solid #999;
  height: 25px;
  -webkit-box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
  box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
}

textarea#content {
  width: 375px;
  height: 150px;
}

textarea#content {
  width: 375px;
  height: 150px;
  display: block;
}

button{
  float:right;  
}


input.button:hover {
  background: #fff;
  color: #09C;
}

textarea:focus, input:focus {
  border: 1px solid #09C;
}

</style>
</head>
<body>
<form action="application.do" method="post" >
  <div>
    <h1>${jobOpening.companyName } / ${jobOpening.jobGroup }</h1>
    	<input type="hidden" id="jobOpeningNum" name="jobOpeningNum" value="${jobOpening.jobOpeningNum }">
    <label>
      <span>Your Id</span><input id="memberId" type="text" name="memberId" />
    </label>

    <label>
      <span>Email Address</span><input id="memberEmail" type="text" name="memberEmail" />
    </label>

    <label>
      <span>제목</span><input id=title type="text" name="title" />
    </label>

    <label>
      <span>자기소개</span><textarea id="content" name="content"></textarea>
      <button type="submit" class="btn">전송</button>
    </label>

  </div>
</form>

</body>
</html>

