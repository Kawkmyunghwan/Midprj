<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 상세보기</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th width="100">작성자</th>
					<td width="150">${contact.infoWriter }</td>
					<th width="100">작성일자</th>
					<td width="150">${contact.infoDate}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="3">${contact.infoTitle}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3">
						<textarea rows="10" cols="80">${contact.infoAnswerContent }
						</textarea>
					</td>
				</tr>
			</table>
		</div><br>
	</div>
	<div align="center">
		<button type="button" onclick="location.href = 'inquiryForm.do'">목록가기</button>&nbsp;&nbsp;
		<button type="button" onclick="location.href = 'inquiryUpdate.do?infoNum=${contact.infoNum}&infoAnswerContent=${contact.infoAnswerContent }'">수정</button>&nbsp;&nbsp;
		<button type="button" onclick="">삭제</button>&nbsp;&nbsp;
	</div>
</body>
</html>