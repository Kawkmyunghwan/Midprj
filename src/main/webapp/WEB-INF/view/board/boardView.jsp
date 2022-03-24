<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="frmu" action="boardUpdate.do" method="post">
	<div align="center">
		<div>
			<h1>게시글 상세보기</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th>글번호</th>
					<td width="20" align="center">${boarders.boardNum }</td>
					<th width="100">작성자</th>
					<td width="150">${boarders.boardWriter }</td>
					<th width="100">작성일자</th>
					<td width="150">${boarders.boardDate}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="6">${boarders.boardName}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="6">
						<textarea id="boardContents" name="boardContents" rows="10" cols="80">${boarders.boardContents }
						</textarea>
					</td>
				</tr>
			</table>
		</div><br>
	<input type="hidden" name="boardNum" value=${boarders.boardNum }>
	</div>
</form>

	<form id="frmd" action="boardDelete.do" method="post">
	<input type="hidden" name="boardNum" value=${boarders.boardNum }>
	</form>
	<div align="center">
		<button type="button" onclick="location.href = 'boardList.do'" style="background-color:black">목록가기</button>&nbsp;&nbsp;
		<button type="submit" form="frmu" style="background-color:black">수정</button>&nbsp;&nbsp;
		<button type="submit" form="frmd" style="background-color:black">삭제</button>&nbsp;&nbsp;
		
	</div>

</body>
</html>