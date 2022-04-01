<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="container" style="max-width: 400px;" align="left">

		<div style="padding:1px 1px 10px 1px">

			<h1>회사정보 수정</h1>
		</div>
		<div>
			<form id="frm" action="companyUpdate.do" method="post">
				<div>

					<table >
						<tr>
							<th>이름</th>
							<td><input type="text" id="COMPANYNAME"
								name="COMPANYNAME" class="form-control" value="${company.COMPANYNAME}"></td>
						</tr>
						<tr>
							<th>주소</th>
							<td><input type="text" id="COMPANYADDRESS"

								name="COMPANYADDRESS" onclick="abc()" class="form-control" value="${company.COMPANYADDRESS}"></td>
						</tr>
<!-- 						<tr> -->
<!-- 							<th>상세주소</th> -->
<!-- 							<td><input type="text" id="ADDRESSDETAIL" -->
<%-- 								name="ADDRESSDETAIL" class="form-control" value="${company.ADDRESSDETAIL}"></td> --%>
<!-- 						</tr> -->
						<tr>
							<th>연봉</th>
							<td><input type="text" id="SALARY" name="SALARY"
								class="form-control" value="${company.SALARY}"></td>
						</tr>
						<tr>
							<th>소개글</th>
							<td><input type="text" id="COMPANYCONTENT"
								name="COMPANYCONTENT" class="form-control" value="${company.COMPANYCONTENT}"></td>
						</tr>
						<tr>
							<th>대표이름</th>
							<td><input type="text" id="REPRESENTATIVE"
								name="REPRESENTATIVE" class="form-control" value="${company.REPRESENTATIVE}"></td>

						</tr>
						<tr>
							<th>직원수</th>
							<td><input type="text" id="EMPLOYEENUM" name="EMPLOYEENUM"
								class="form-control" value="${company.EMPLOYEENUM}"></td>
						</tr>
						<tr>
							<th>설립일</th>
							<td><input type="text" id="COMPANYBUILDDATE"
								name="COMPANYBUILDDATE" class="form-control" value="${company.COMPANYBUILDDATE}"></td>
						</tr>
						<tr>
							<th>홈페이지</th>
							<td><input type="text" id="HOMEPAGE" name="HOMEPAGE"
								class="form-control" value="${company.HOMEPAGE}"></td>
						</tr>
						<tr>
							<th>직군</th>
							<td><input type="text" id="JOBGROUP" name="JOBGROUP"
								class="form-control" value="${company.JOBGROUP}"></td>
						</tr>
						<tr>
							<th>이미지</th>
							<td><input type="text" id="COMPANYIMAGE" name="COMPANYIMAGE"
								class="form-control" value="${company.COMPANYIMAGE}"></td>
						</tr>
						
					</table>
						<input type="hidden" id="JOBOPENINGNUM" name="JOBOPENINGNUM" value="${company.JOBOPENINGNUM}">
				</div>
				<br>
				<div>
					<button type="submit" class="genric-btn primary small">수정</button>
					&nbsp;&nbsp;&nbsp;
					<button type="reset" class="genric-btn primary small">취 소</button>&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="delect(${JOBOPENINGNUM})" class="genric-btn primary small">삭제</button>
					&nbsp;&nbsp;&nbsp;
				</div>
			</form>
		</div>
	</div>
	
	<script type="text/javascript">
		function delect(a){
			location.href="companyDelect.do?JOBOPENINGNUM="+a;
		}
	</script>
	
	

	
	
</body>
</html>