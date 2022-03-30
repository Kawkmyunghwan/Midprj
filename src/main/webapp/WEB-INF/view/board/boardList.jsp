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
<div align="center">
	<div><h1>커뮤니티 게시글 목록</h1></div>
	<form id="frm" method="post">
	
	<div style="padding:100px 0px 100px 0px">			
		<table border="1" id="contents">
			<thead>
				<tr align="center">
                  <th width="150"><span style="color:red" onclick="sortBoard('A')">A </span>글번호<span style="color:red" onclick="sortBoard('D')"> D</span></th>
                  <th width="150">작성자</th>
                  <th width="300">제 목</th>
                  <th width="150">작성일자</th>
                  <th width="70">조회수</th>
               </tr>
			</thead>
			<tbody id="boardBody">
				<c:if test="${empty boarders }">
					<tr>
						<td colspan="5">게시글이 존재하지 않습니다.</td>
					</tr>
				</c:if>
				<c:if test="${not empty boarders }">
					<c:forEach items="${boarders }" var="b">
						<tr onmouseover='this.style.background="#fcecae";' 
							onmouseleave='this.style.background="#FFFFFF";'
							onclick="boardContents(${b.boardNum})">
							<td>${b.boardNum }</td>
							<td>${b.boardWriter }</td>
							<td>${b.boardName }</td>
							<td>${b.boardDate }</td>
							<td>${b.boardHit }</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>	
		</table>
	
		
		
		<div align="right" style="padding:10px 541px 0px 0px">
		<span style="padding-right:380px"><button class="genric-btn primary small" type="button" onclick="location.href='boardInsertForm.do'">글쓰기</button></span>
		<select id="searchKey">
			<option value="1">전체</option>
			<option value="2">작성자</option>
			<option value="3">제목</option>
			<option value="4">내용</option>
		</select>
		<span>
			<input type="text" id="searchVal">&nbsp;
			<input type="button" onclick="searchList()" value="검색">
		</span>
		</div>
	</div><br>
	
		<input type="hidden" id="boardNum" name="boardNum">
	</form>
</div>
<script>
function boardContents(n){
	frm.boardNum.value = n;
	frm.action = "boardView.do";
	frm.submit();
}

function searchList(){
	$.ajax({
		url : "ajaxBoardSearch.do",
		type : "post",
		data : {"key" : $("#searchKey").val(), "val" : $("#searchVal").val()},
		dataType : "json",
		success : function(result){
			if(result.length > 0){
				//html 변환코드
				searchResult(result); //json data를 html로 변환해서 화면에 뿌려주는 메소드
			}else{
				alert("검색한 결과가 존재하지 않습니다.")
			}
		}
	});
	
}

	function searchResult(data){
		var tb = $('#boardBody');
		$("#boardBody").empty();
		
		$.each(data, function(index, item){
			var html = $("<tr />").attr({
				'onmouseover' : 'this.style.background="#fcecae";',
				'onmouseleave' : 'this.style.background="#FFFFFF";',
				'onclick' : 'boardContents('+ item.boardNum +')'
			}).append(
			$("<td align='center'/>").text(item.boardNum),		
			$("<td align='center'/>").text(item.boardWriter),
			$("<td />").text(item.boardName),
			$("<td align='center'/>").text(item.boardDate),
			$("<td align='center'/>").text(item.boardHit),
		);
		tb.append(html);
	});
	
	$("#contents").append(tb);
}

	function sortBoard(key){
		$.ajax({
			url : "ajaxSortBoard.do",
			type : "post",
			data : {"key" : key},
			dataType : "json",
			success : function(result){
				searchResult(result);
			}
		});
	}









</script>

</body>
</html>