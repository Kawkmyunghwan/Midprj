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
			<h1>������</h1>
		</div>
		<form id="frm" method="post">
			<div>
				<table border="1" id="contents">
					<thead>
						<tr>
							<th width="75">�� ��</th>
							<th width="150">�߽���</th>
							<th width="300">�� ��</th>
							<th width="150">�߽���</th>
						</tr>
					</thead>

					<tbody id="notesBody">
						<c:if test="${empty notes }">
							<tr>
								<td colspan="5">�Խñ��� �������� �ʽ��ϴ�.</td>
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
				<button type="button" onclick="selectAll(this)">��ü ����</button>
				<button type="button" onclick="notesDelete">�� ��</button>
				<button type="button" onclick="location.href='notesInsertForm.do'">����
					����</button>
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
			alert("������ ������ üũ���ּ���.");
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