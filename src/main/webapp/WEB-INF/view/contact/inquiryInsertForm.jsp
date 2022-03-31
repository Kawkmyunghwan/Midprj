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
	<div style="padding:1px 1px 10px 1px"><h1>게시글 작성</h1></div>
	<div >
		<form id="frm" action="inquiryInsert.do" method="post">
			<div class="container"style="max-width:880px;" class="card">
				<table border="1" class="card" >
					<tr >
						<th width="160" style="padding:1px 1px 1px 10px">작성자</th>
						<td width="250" style="padding:1px 1px 1px 10px">
							${memberName }
							<input type="hidden" id="infoWriter" name="infoWriter" required="required" value="${memberName }">
						</td>
						<th width="150" style="padding:1px 1px 1px 10px">작성일자</th>
						<td width="290">
							<input type="date" id="infoDate" name="infoDate" required="required" class="form-control">
						</td>
					</tr>
					<tr>
						<th style="padding:1px 1px 1px 10px">제목</th>
						<td colspan="3" >
							<input type="text" size="80" id="infoTitle" name="infoTitle" required="required" class="form-control">
						</td>	
					</tr>
					<tr>
						<th style="padding:1px 1px 1px 10px">내용</th>
						<td colspan="3" >
							<textarea rows="10" cols="80"  name="infoAnswerContent" class="form-control"></textarea>
						</td>	
					</tr>
				</table>
			</div><br>
			<div style="padding : 10px 40px">
				<button type="submit" class="genric-btn primary small">글등록</button>&nbsp;&nbsp;&nbsp;
				<button type="reset" class="genric-btn primary small">취 소</button>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href = 'inquiryForm.do'" class="genric-btn primary small">목 록</button>&nbsp;&nbsp;&nbsp;
			</div>
		</form>
	</div>
</div>
</body>
</html>