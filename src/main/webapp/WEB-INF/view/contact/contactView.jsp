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
	<div class="container">
	<form id="frm" method="post">
		<div align="center">
			<div>
				<h1>게시글 상세보기</h1>
			</div>
			
			<div>
				<div class="container"style="max-width:950px;">
				<div class="container"style="max-width:900px;">
				<table border="1" >
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
				</div>
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
		<div align="center">
			<button type="button" onclick="location.href = 'inquiryForm.do'">목록가기</button>
			&nbsp;&nbsp;
			<%-- 		<button type="button" onclick="location.href = 'inquiryUpdate.do?infoNum=${contact.infoNum}&infoAnswerContent=${contact.infoAnswerContent}'">수정</button>&nbsp;&nbsp; --%>
			<button type="button" onclick="contentsUpdate()">수정</button>
			&nbsp;&nbsp;
			<button type="button" onclick="contentsDelete()">삭제</button>

		</div>
	</div>
	</div>
	</form>
</div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		if("${contact.isAnswer}" != "" || "${contact.isAnswer}" == null){
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