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
	<form id="frm" method="post">
		<div align="center">
			<div>
				<table border="1">
					<tr>
						<td width="200">${note.title }</td>
						<th width="100">발신자</th>
						<td width="150">${note.sentId }</td>
						<th width="100">발신일</th>
						<td width="150">${note.dateSent }</td>
					</tr>
					<tr>
						<td colspan="6" height="150">${note.note }</td>
					</tr>
				</table>
			</div>
			
			<div>
				<button type="button" onclick="reSentNote('${note.sentId }')">답 장</button>
				&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="deleteNote('${note.no}')">삭 제</button>
				&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href = 'notesListForm.do'">쪽지함</button>
			</div>
<input type="hidden" id="reSent" name="reSent">
		</div>
	</form>
	</div>
</body>

<script>
function reSentNote(n){
	frm.reSent.value = n;
	frm.action = "notesInsertForm.do";
	frm.submit();
}

function deleteNote(n){
	frm.reSent.value = n;
	frm.action = "noteDelete.do";
	frm.submit();
}
</script>
</html>