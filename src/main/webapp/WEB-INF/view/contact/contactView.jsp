<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="inquiryUpdate.do" method="post">
		<div align="center">
			<div>
				<h1>게시글 상세보기</h1>
			</div>

			<div>
				<table border="1">
					<tr>
						<th width="100">작성자</th>
						<td width="150">${contact.infoWriter}</td>
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
							<textarea rows="10" id="infoAnswerContent" name="infoAnswerContent" cols="80">${contact.infoAnswerContent}</textarea>
						</td>
					</tr>
					
				</table>
				<br/>
				
				<table border="1">
					<tr>
						<th width="100">답변</th>
						<td width="746">
							<pre>${contact.infoAnswerContent}</pre>
						</td>
					</tr>
					
				</table>
			
				<input type="hidden" id="infoNum" name="infoNum"
					value="${contact.infoNum}">
			</div>
			<br>
		
		</div>
		<div align="center">
			<button type="button" onclick="location.href = 'inquiryForm.do'">목록가기</button>
			&nbsp;&nbsp;
			<%-- 		<button type="button" onclick="location.href = 'inquiryUpdate.do?infoNum=${contact.infoNum}&infoAnswerContent=${contact.infoAnswerContent}'">수정</button>&nbsp;&nbsp; --%>
			<button type="submit">수정</button>
			&nbsp;&nbsp;
			<button type="button" onclick="contentsDelete()">삭제</button>
			&nbsp;&nbsp;
			<button type="button" onclick="review.do()">댓글작성</button>
		</div>
	</form>

</body>
<script type="text/javascript">
	function contentsDelete(){
		if(confirm("삭제하시겠습니까?")){
			location.href = 'inquiryDelete.do?infoNum=${contact.infoNum}';	
		}
	}
	
</script>
</html>