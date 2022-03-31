<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="container">
	<form id="frm" method="post">
		<div align="center">
			<div>
				<h1>게시글 상세보기</h1>
			</div>
			
			<div>
				
				<div class="container"style="max-width:880px;" class="card">
				<table border="1" class="card">
					<tr>
						<th width="160" height="39" style="padding:1px 1px 1px 10px"> 작성자</th>
						<td width="250" style="padding:1px 1px 1px 10px">${contact.infoWriter}</td>
						<th width="150" height="39" style="padding:1px 1px 1px 10px">작성일자</th>
						<td width="290" style="padding:1px 1px 1px 10px">${contact.infoDate}</td>
					</tr>
					<tr>
						<th height="39" style="padding:1px 1px 1px 10px">제목</th>
						<td colspan="3" style="padding:1px 1px 1px 10px">${contact.infoTitle}</td>
					</tr>
					<tr>
						<th style="padding:1px 1px 1px 10px">내용</th>
						<td colspan="3">
							<textarea rows="10" class="form-control" id="infoAnswerContent" name="infoAnswerContent" cols="80">${contact.infoAnswerContent}</textarea>
						</td>
					</tr>
					
				</table>
				<br/>
				</div>
				
				
				<div class="container"style="max-width:880px;">
				<div class="card">
					<div class="card-body">		
						<div class="row">
						<div class="col-md-1" align="left">
							<label>답변: </label>
						</div>
						<div class="col-md-11" align="left">
							<pre id="isAnswerText">${contact.isAnswer}</pre>
							<textarea id="isAnswer" name="isAnswer">${contact.isAnswer}</textarea>
						</div>	
						</div>
						
					</div>
				</div>	
					<c:if test="${memberId eq 'admin'}">
					<div class="col-md-12" id="the" align="left">
					<table border="1">
					</table>
						

						<button type="button" onclick="reviewShow()">수정</button>
						<button type="button" onclick="reviewUpdate()">수정완료</button>
					</div>
					</c:if>
				
					
				<input type="hidden" id="infoNum" name="infoNum" value="${contact.infoNum}">
			<br>
	

	
		</div>
		<div align="center" style="padding : 10px 40px">
			<button type="button" onclick="location.href = 'inquiryForm.do'" class="genric-btn primary small">목록가기</button>
			&nbsp;&nbsp;
			<button type="button" onclick="contentsUpdate()" class="genric-btn primary small">수정</button>
			&nbsp;&nbsp;
			<button type="button" onclick="contentsDelete()" class="genric-btn primary small">삭제</button>

		</div>
	</div>
	</div>
	</form>
</div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		var str = `${contact.isAnswer}`;
		if(str != "" || str == null){
			$("#isAnswer").hide();
		}else{
			$("#isAnswer").show();
		}
	})
	
	function contentsDelete(){
		if(confirm("삭제하시겠습니까?")){
			location.href = 'inquiryDelete.do?infoNum=${contact.infoNum}';	
		}
	}
	
	function reviewInsert(){
		frm.infoNum.value = "${contact.infoNum}";
		frm.isAnswer.value = $("#isAnswer").val();
		frm.action = "reviewInsert.do";
		frm.submit();
	}
	
	function contentsUpdate(){
		 frm.infoNum.value = "${contact.infoNum}";
		 frm.infoAnswerContent.value = $("#infoAnswerContent").val();
		 frm.action = "inquiryUpdate.do";
		 frm.submit();
	}
	
	function reviewUpdate(){
		$("#isAnswer").hide();
		$("#isAnswerText").show();
		frm.infoNum.value = "${contact.infoNum}";
		frm.isAnswer.value = $("#isAnswer").val();
		frm.action = "reviewInsert.do";
		frm.submit();

	}
	
	function reviewShow(){
		$("#isAnswer").show();
		$("#isAnswerText").hide();
	}
</script>
</html>