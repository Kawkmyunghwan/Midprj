<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>

</head>
<body>
	<div align="center">
		<div>
			<h1>쪽지함</h1>
			
			<h2>
				<a onclick="location.href='notesListForm.do'">받은 쪽지</a>|<b>보낸 쪽지</b>
			</h2>
		</div>
		<form id="frm" method="post">
			<div>
				<table border="1" id="contents">
					<thead>
						<tr align="center">
							<th width="100"><input type="checkbox" name="allSel"
								id="allSel" value="allSelect" onclick="selectAll(this)">전체선택</th>
							<th width="150">수신자</th>
							<th width="300">제 목</th>
							<th width="150">발신일</th>
						</tr>
					</thead>

					<tbody id="notesBody">
						<c:if test="${empty notes }">
							<tr>
								<td colspan="5">보낸 쪽지가 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty notes }">
							<c:forEach items="${notes }" var="no">
								<tr>
									<td align="center"><input type="checkbox" name="deleteSel"
										id="deleteSel${no.no }" value="${no.no }"></td>
									<td align='center'>${no.recvId }</td>
									<td align='center' onclick="notesContents(${no.no})">${no.title }</td>
									<td align='center'>${no.dateSent }</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
			<br>
<input type="hidden" id="notesNo" name="notesNo">
			<div>
				<button type="button" onclick="notesDelete()">삭 제</button>
				<button type="button" onclick="location.href='notesInsertForm.do'">쪽지
					쓰기</button>
			</div>
		</form>

	</div>


</body>

<script>

function selectAll(allSelect){
	var checkboxes = document.querySelectorAll('input[type="checkbox"]');
	checkboxes.forEach((checkbox) => {
	    checkbox.checked = allSelect.checked
	  })
}

	function notesContents(n){
		frm.notesNo.value = n;
		frm.action = "noteViewForm.do";
		frm.submit();
	}
	
	function notesDelete(){
		
		var val = document.getElementsByName("deleteSel");		
		var check = false;		
		var count = 0;
		//var delArray = [];		
		var data = '';
		
		for(var i=0; i<val.length; i++){
			if(val[i].checked == true){
				
				//delArray.push(val[i].value);
				data = data + '-' + val[i].value;
				
				count++;
			}
		}

		if(count < 1){	
			alert("삭제할 쪽지를 체크해주세요!");			
		}else{
		$.ajax({
			url : "ajaxNotesDelete.do",
			type : "post",
			data : {"deleteSel" : data},
		  dataType : "json",
		  success : function(result){
		  //deleteResult(result);
		  if(result < 1){
			  alert("삭제에 실패했습니다.");
		  }else{
			alert(result+"건이 삭제되었습니다.");
			location.href='notesListForm.do';
		  }
		  }
		})
	}
	}
	
	
	</script>
</html>