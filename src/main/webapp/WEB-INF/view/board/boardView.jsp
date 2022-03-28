<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<form id="board" method="post">
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
						<td colspan="6"><textarea id="boardContents"
								name="boardContents" rows="10" cols="80" required="required">${boarders.boardContents }
						</textarea></td>
					</tr>
				</table>
			</div>
			<br>
			
	</div>
	<div align="center">
		<c:forEach items="${comments }" var="c">

				<table border="1">
					<tr>
						<td>작성자</td>
						<td>${c.memberId}</td>
						<td>작성일자</td>
						<td>${c.commentsDate }</td>
					</tr>
					<tr>
						<td>댓글내용</td>
						<td colspan="4" class="commentContent">${c.commentsContent }</td>
					</tr>
				</table>
				<button type="button" onclick='updateBtnVisible(${c.commentsNum })'>수정</button>
				<button type="button" onclick="commentsDelete(${c.commentsNum})">삭제</button>
				<input type="hidden" id="boardNum" name="boardNum" value=${boarders.boardNum }>
				<input type="hidden" id="commentsNum" name="commentsNum" value="">
				<br>
		</c:forEach>
	</div>

		<div align="center">
			<textarea name="commentsContent" id="commentsContent"></textarea>
			<button type="button" onclick="commentsInsert(${boarders.boardNum})" style="background-color: black">등록</button>
			<button type="submit" id="edit_btn" formaction="commentsUpdate.do"
				style="background-color: black; visibility:hidden;">수정</button>
		</div>

	<div align="center">
		<button type="button" onclick="location.href = 'boardList.do'"
			style="background-color: black">목록가기</button>
		&nbsp;&nbsp;
		<button type="button" onclick="boardUpdate(${boarders.boardNum})" style="background-color: black">수정</button>
		&nbsp;&nbsp;
		<button type="button" onclick="boardDelete(${boarders.boardNum})" style="background-color: black">삭제</button>
		&nbsp;&nbsp;
	</div>
	<input type="hidden" id="boardNum" name="boardNum" value=${boarders.boardNum }>
	<input type="hidden" id="commentsNum" name="commentsNum" value="">
</form>
	<script type="text/javascript">
		if ('${message}' != '') {
			window.alert('${message}');
		}

		function updateBtnVisible(n) {
			var btn = document.getElementById('edit_btn');
			btn.style.visibility = 'visible';
			document.getElementById('commentsNum').value = n;
			document.getElementById('commentsContent').focus();
		}
		
		function commentsInsert(n){
			board.action = "commentsInsert.do"
			board.submit();
		}
		
		function commentsDelete(n){
			document.getElementById('commentsNum').value = n;
			board.action = "commentsDelete.do"
			board.submit();
		}
		
		function boardUpdate(n){
			board.action = "boardUpdate.do";
			board.submit();
		}
		
		function boardDelete(n){
			board.action = "boardDelete.do";
			board.submit();
		}
	</script>
</body>
</html>