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
   <div class="container">
      <form id="board" method="post">
         <div>
            <h1>게시글 상세보기</h1>
         </div>
         <div class="container" style="max-width: 880px;" class="card">
            <table border="1" class="card">
               <tr>
                  <th width="205" height="39" style="padding: 1px 1px 1px 10px">글번호</th>
                  <td width="155" height="39" style="padding: 1px 1px 1px 10px">${boarders.boardNum }</td>
                  <th width="105" style="padding: 1px 1px 1px 10px">작성자</th>
                  <td width="155" height="39" style="padding: 1px 1px 1px 10px">${boarders.boardWriter }</td>
                  <th width="105" height="39" style="padding: 1px 1px 1px 10px">작성일자</th>
                  <td width="155" style="padding: 1px 1px 1px 10px">${boarders.boardDate}</td>
               </tr>
               <tr>
                  <th height="39" style="padding: 1px 1px 1px 10px">제목</th>
                  <td colspan="6" style="padding: 1px 1px 1px 10px">${boarders.boardName}</td>
               </tr>
               <tr>
                  <th style="padding:1px 1px 1px 10px">내용</th>
                  <td colspan="6"><textarea id="boardContents"
                        name="boardContents" class="form-control" rows="10" cols="80"
                        required="required">${boarders.boardContents }
                  </textarea></td>
               </tr>
            </table>
         </div>
         <br>


         <div class="container" style="max-width: 880px;">
            <div class="card">

               <c:forEach items="${comments }" var="c">

                  <table border="1">
                     <tr>
                        <td width="160" height="39" style="padding: 1px 1px 1px 10px">작성자</td>
                        <td width="250" style="padding: 1px 1px 1px 10px">${c.memberId}</td>
                        <td width="150" height="39" style="padding: 1px 1px 1px 10px">작성일자</td>
                        <td width="290" style="padding: 1px 1px 1px 10px">${c.commentsDate }</td>
                     </tr>
                     <tr>
                        <td height="39" style="padding: 1px 1px 1px 10px">댓글내용</td>
                        <td colspan="4" class="commentContent"
                           style="padding: 1px 1px 1px 10px">${c.commentsContent }</td>
                     </tr>
                  </table>
                  <c:if test="${c.memberId == memberId }">
                     <button type="button"
                        onclick='updateBtnVisible(${c.commentsNum })'>수정</button>
                     <button type="button" onclick="commentsDelete(${c.commentsNum})">삭제</button>
                     <input type="hidden" id="boardNum" name="boardNum"
                        value=${boarders.boardNum }>
                     <input type="hidden" id="commentsNum" name="commentsNum" value="">
                  </c:if>
                  <br>
               </c:forEach>


               <div align="center">
                  <textarea name="commentsContent" id="commentsContent" class="form-control" style="resize:none"></textarea>
                  <div style="padding:15px 0px 15px 0px">
                     <button type="button"
                        onclick="commentsInsert(${boarders.boardNum})"
                        style="background-color: black">등록</button>
                        <c:if test="${c.memberId == memberId }">
                     <button type="submit" id="edit_btn" formaction="commentsUpdate.do"
                        style="background-color: black; visibility: hidden;">수정</button>
                        </c:if>
                  </div>
               </div>

            </div>
         </div>
         <div align="center">
            <button type="button" onclick="location.href = 'boardList.do'"
               style="background-color: black">목록가기</button>
            &nbsp;&nbsp;
            <c:if test="${boarders.boardWriter == memberId }">
            <button type="button" onclick="boardUpdate(${boarders.boardNum})"
               style="background-color: black">수정</button>
            &nbsp;&nbsp;
            <button type="button" onclick="boardDelete(${boarders.boardNum})"
               style="background-color: black">삭제</button>
            &nbsp;&nbsp;
            </c:if>
         </div>
         <input type="hidden" id="boardNum" name="boardNum"
            value=${boarders.boardNum }> <input type="hidden"
            id="commentsNum" name="commentsNum" value="">
      </form>
   </div>
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