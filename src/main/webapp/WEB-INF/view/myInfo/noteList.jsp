<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div align="center">

		<div>
			<h1>쪽지함</h1>
		</div>
		<form id="frm" method="post">
			<div>
				<table border="1" id="contents">
					<thead>
						<tr>
							<th width="75">선 택</th>
							<th width="150">발신자</th>
							<th width="300">제 목</th>
							<th width="150">발신일</th>
						</tr>
					</thead>

					<tbody id="notesBody">
						<c:if test="${empty notes }">
							<tr>
								<td colspan="5">게시글이 존재하지 않습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty notes }">
							<c:forEach items="${notes }" var="no">
								<tr>
									<td align="center"><input type="checkbox" name="deleteSel"
										id="deleteSel" value="${no.no }"></td>
									<td align='center'>${no.sentId }</td>
									<td align='center' onclick="notesContents(${no.no})">${no.title }</td>
									<td align='center'>${no.dateSent }</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
			<br>

			<div>
				<button type="button" onclick="selectAll(this)">전체 선택</button>
				<button type="button" onclick="notesDelete">삭 제</button>
				<button type="button" onclick="location.href='notesInsertForm.do'">쪽지
					쓰기</button>
			</div>
		</form>

	</div>

	<script>
	function selectAll(){
		
	}
	function notesContents(n){
		
	}
	function notesDelete(){
		if($.('deleteSel:checked').length == null){
			alert("삭제할 쪽지를 체크해주세요.");
		}else{
		$.ajax({
			url : "ajaxNotesDelete.do"
			type : "post",
			data : {"deleteSel" : deleteSel.value},
		    dataType : "json",
		    success : function(data){
		    	deleteResult(data);
		    }
		})
	}
	}
	
	function deleteResult(result){
		var tb = $('#notesBody');
		$("#notesBody").empty();
		
		$.each(result, function(index, item){
			var html = $("<tr />").append(
					$("<td />").attr({
						'align' : 'center'
						'type' : 'checkbox',
						'name' : 'deleteSel',
						'id' : 'deleteSel',
						value : 'notesConetents('+ item.no +')'
					}),
					$("<td align='center'/>").text(item.sentId),
					$("<td align='center' onclick='notesContents(${no.no})'/>").text(item.title),
					$("<td align='center'/>").text(item.dateSent)
					);
			tb.append(html);
		});
		$("#contents").append(tb);
	} 
	</script>
</body>
</html>