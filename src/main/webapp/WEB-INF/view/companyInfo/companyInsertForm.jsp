<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function abc() {
	document
			.getElementById("COMPANYADDRESS")
			.addEventListener(
					"click",
					function() { //주소입력칸을 클릭하면
						//카카오 지도 발생
						new daum.Postcode(
								{
									oncomplete : function(data) { //선택시 입력값 세팅
										document
												.getElementById("COMPANYADDRESS").value = data.address; // 주소 넣기
										document
												.querySelector(
														"input[name=ADDRESSDETAIL]")
												.focus(); //상세입력 포커싱
									}
								}).open();
					});
}
</script>
</head>
<body>

	<div class="container" style="max-width: 700px;" align="left">

		<div>
			<h1>회사정보 입력</h1>
		</div>
		<div>
			<form id="frm" action="companyInsert.do" method="post">
				<div>
					<table>
						<tr>
							<th>이름</th>
							<td><input type="text" id="COMPANYNAME" name="COMPANYNAME"
								class="form-control"></td>
						</tr>
						<tr>
							<th>주소</th>
							<td><input type="text" id="COMPANYADDRESS"
								name="COMPANYADDRESS" onclick="abc()" class="form-control"></td>
						</tr>
						<tr>
							<th>상세주소</th>
							<td><input type="text" id="ADDRESSDETAIL"
								name="ADDRESSDETAIL" class="form-control"></td>
						</tr>
						<tr>
							<th>연봉</th>
							<td><input type="text" id="SALARY" name="SALARY"
								class="form-control"></td>
						</tr>
						<tr>
							<th>소개글</th>
							<td><input type="text" id="COMPANYCONTENT"
								name="COMPANYCONTENT" class="form-control"></td>
						</tr>
						<tr>
							<th>대표이름</th>
							<td><input type="text" id="REPRESENTATIVE"
								name="REPRESENTATIVE" class="form-control"></td>
						</tr>
						<tr>
							<th>직원수</th>
							<td><input type="text" id="EMPLOYEENUM" name="EMPLOYEENUM"
								class="form-control"></td>
						</tr>
						<tr>
							<th>설립일</th>
							<td><input type="text" id="COMPANYBUILDDATE"
								name="COMPANYBUILDDATE" class="form-control" placeholder="Ex)2022-04-01"></td>
						</tr>
						<tr>
							<th>홈페이지</th>
							<td><input type="text" id="HOMEPAGE" name="HOMEPAGE"
								class="form-control"></td>
						</tr>
						<tr>
							<th>직군</th>
							<td>
								<select name="JOBGROUP" id="JOBGROUP">
									<option value="IT">IT</option>
									<option value="기획">기획</option>
									<option value="건축">건축</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>이미지</th>
							<td>
								<select name="COMPANYIMAGE" id="COMPANYIMAGE">
									<option value="flaticon-cms">IT</option>
									<option value="flaticon-report">기획</option>
									<option value="flaticon-helmet">건축</option>
								</select>
							</td>
						</tr>
					</table>
				</div>
				<br>

				<div style="padding : 10px 40px">
					<button type="submit" class="genric-btn primary small">글등록</button>
					&nbsp;&nbsp;&nbsp;
					<button type="reset" class="genric-btn primary small">취 소</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="location.href = 'inquiryForm.do'" class="genric-btn primary small">목록</button>
					&nbsp;&nbsp;&nbsp;
				</div>
			</form>
		</div>
	</div>
</body>
</html>