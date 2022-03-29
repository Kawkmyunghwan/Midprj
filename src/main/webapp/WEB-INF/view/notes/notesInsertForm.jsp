<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>
			<h2>쪽지 보내기</h2>
		</div>
		<div align="center">
			<form id="frm" action="noteInsert.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="100">받는 사람ID!</th>
							
							<td width="150"><input type="text" id="recvId" name="recvId"
								required="required" value="${recv }"></td>							
							
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="3"><input type="text" size="80" id="title"
								name="title" required="required"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="3"><textarea rows="10" cols="80" name="note" required="required"></textarea>
							</td>
						</tr>
					</table>
				</div>
				<br>
				<div>
					<button type="submit">보내기</button>
					&nbsp;&nbsp;&nbsp;
					<button type="reset">취 소</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="location.href = 'notesListForm.do'">쪽지함
						</button>
					
				</div>
			</form>
		</div>
	</div>
</body>
</html>