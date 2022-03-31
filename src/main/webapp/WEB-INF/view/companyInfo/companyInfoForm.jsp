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
	<div class="container" style="max-width: 1300px;" align="left">
		<div>
			<h1>회사정보</h1>
		</div>
		<form id="frm" method="post">

			<table class="table table-hover">
				<thead>
					<tr align="center">
						<th width="40">번호</th>
						<th width="90">이름</th>
						<th width="40">직군</th>
						<th width="70">연봉</th>
						<th width="70">소개글</th>
						<th width="70">대표이름</th>
						<th width="40">직원수</th>
						<th width="80">홈페이지</th>
						<th width="110">설립일</th>
						<th width="200">주소</th>
					</tr>
				</thead>
				<tbody align="center" >
					<c:if test="${empty company }">
						<tr>
							<td colspan="5">게시글이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not empty company }">
						<c:forEach items="${company }" var="c">
							<tr>
								<td>${c.JOBOPENINGNUM }</td>
								<td>${c.COMPANYNAME }</td>
								<td>${c.JOBGROUP }</td>
								<td>${c.SALARY }</td>
								<td>${c.COMPANYCONTENT }</td>
								<td>${c.REPRESENTATIVE }</td>
								<td>${c.EMPLOYEENUM }</td>
								<td>${c.HOMEPAGE }</td>
								<td>${c.COMPANYBUILDDATE }</td>
								<td>${c.COMPANYADDRESS }</td>

							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
			<div class="row">
				<input type="hidden" id=infoNum name="infoNum">
			</div>
		</form>
	</div>
</body>
</html>