<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>

</head>
<body>
	<div class="container" style="max-width: 850px;" align="left">
		<div>
			<h1>문의게시판</h1>
		</div>
		<form id="frm" method="post">

			<table class="table">
				<thead>
					<tr align="center">
						<th width="150"><a onclick="sortContact(1)">No</a></th>
						<th width="300">제 목</th>
						<th width="100">글쓴이</th>
						<th width="150">작성시간</th>
						<th width="70">조회수</th>
					</tr>
				</thead>
				<tbody align="center" id="contactBody">
					<c:if test="${empty contacts }">
						<tr>
							<td colspan="5">게시글이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not empty contacts }">
						<c:forEach items="${contacts }" var="c">
							<tr onmouseover='this.style.background="#fcecae";'
								onmouseleave='this.style.background="#FFFFFF";'
								onclick="contactContents(${c.infoNum})">
								<td>${c.infoNum }</td>
								<td>${c.infoTitle }</td>
								<td>${c.infoWriter }</td>
								<td>${c.infoDate }</td>
								<td>${c.infoHit }</td>

							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
			<div class="row">
				<div class="col-md-6">
					<button class="genric-btn primary small"
						style="float: left; height: 38px;" type="button"
						onclick="location.href='inquiryInsertForm.do'">글쓰기</button>
				</div>

				<div class="col-md-6 mb-2" align="right">
					<div class="input-group">
						<select class="form-control" id="searchKey">
							<option value="1">전체</option>
							<option value="2">작성자</option>
							<option value="3">제목</option>
							<option value="4">내용</option>
						</select> <input class="form-control form-control me-3"
							style="width: 150px;" type="text" id="searchVal"
							placeholder="검색어를 입력하세요." aria-label=".form-control-sm example">
						<input class="genric-btn primary small" type="button"
							onclick="searchList()" value="검색">
					</div>
				</div>
				<input type="hidden" id=infoNum name="infoNum">
				
				
			</div>
			<div align="right">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<c:if test="page != 1">
							
							</c:if>
							
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
				</div>
		</form>
	</div>

	<div>
                    <c:if test="${pagination.curRange ne 1 }">
                        <a href="#" onClick="fn_paging(1)">[처음]</a> 
                    </c:if>
                    <c:if test="${pagination.curPage ne 1}">
                        <a href="#" onClick="fn_paging('${pagination.prevPage }')">[이전]</a> 
                    </c:if>
                    <c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
                        <c:choose>
                            <c:when test="${pageNum eq  pagination.curPage}">
                                <span style="font-weight: bold;"><a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a></span> 
                            </c:when>
                            <c:otherwise>
                                <a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a> 
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
                        <a href="#" onClick="fn_paging('${pagination.nextPage }')">[다음]</a> 
                    </c:if>
                    <c:if test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
                        <a href="#" onClick="fn_paging('${pagination.pageCnt }')">[끝]</a> 
                    </c:if>
                </div>
                
                <div>
                    총 게시글 수 : ${pagination.listCnt } /    총 페이지 수 : ${pagination.pageCnt } / 현재 페이지 : ${pagination.curPage } / 현재 블럭 : ${pagination.curRange } / 총 블럭 수 : ${pagination.rangeCnt }
                </div>
	


<script>
function contactContents(n){
   frm.infoNum.value = n;
   frm.action = "inquiryView.do";
   frm.submit();
}

function searchList(){
   $.ajax({
      url : "ajaxcontactSearch.do",
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
      var tb = $('#contactBody');
      $("#contactBody").empty();
      
      $.each(data, function(index, item){
         var html = $("<tr />").attr({
            'onmouseover' : 'this.style.background="#fcecae";',
            'onmouseleave' : 'this.style.background="#FFFFFF";',
            'onclick' : 'contactContents('+ item.infoNum +')'
         }).append(
         $("<td align='center'/>").text(item.infoNum),      
         $("<td align='center'/>").text(item.infoTitle),
         $("<td />").text(item.infoWriter),
         $("<td align='center'/>").text(item.infoDate),
         $("<td align='center'/>").text(item.infoHit),
      );
      tb.append(html);
   });
   
   $("#contents").append(tb);
}

   function sortContact(key){
      $.ajax({
         url : "ajaxSortContact.do",
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