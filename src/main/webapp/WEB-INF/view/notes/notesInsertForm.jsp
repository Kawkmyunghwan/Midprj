<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
   <script src="./assets/js/signup/main.js"></script>
</head>
<body>
   <div>
      <div>
         <h2>쪽지 보내기</h2>
      </div>
      <div align="center">
         <form id="frm" action="noteInsert.do" onsubmit="return formcheck()" method="post">
            <div>
               <table border="1">
                  <tr>
                     <th width="100">받는 사람ID</th>
                     
                     <td width="150"><input type="text" id="recvId" name="recvId"
                        required="required" value="${recv }"></td>
                     <td><button  type="button" id="checkId"
                        value="No" onclick="isIdCheck()">중복체크</button></td>                  
                     
                  </tr>
                  <tr>
                     <th>제목</th>
                     <td colspan="3"><input type="text" size="80" id="title"
                        name="title" required="required"></td>
                  </tr>
                  <tr>
                     <th>내용</th>
                     <td colspan="3"><textarea rows="10" cols="80" name="note" required="required"></textarea>
                     </td>
                  </tr>
               </table>
            </div>
            <br>
            <div>
               <button type="button" onclick="formCheck()" class="genric-btn primary small">보내기</button>
               &nbsp;&nbsp;&nbsp;
               <button type="reset" class="genric-btn primary small">취 소</button>
               &nbsp;&nbsp;&nbsp;
               <button type="button" onclick="location.href = 'notesListForm.do'" class="genric-btn primary small">쪽지함
                  </button>
               
            </div>
         </form>
      </div>
   </div>
   <script type="text/javascript">
      function isIdCheck() {
         $.ajax({
            url : "ajaxMemberIdCheck.do",
            type : "post",
            data : {
               "str" : $('#recvId').val()
            },
            dataType : "text",
            success : function(result) {
               if (result == '0') {
                  alert("중복체크 완료.");
                  $("#checkId").attr("disabled", "disabled");
                  $("#checkId").val('Yes');
                  
               } else {
                  alert("존재하지 않는 회원입니다.");
                  $("#recvId").val('');
                  $("#recvId").focus();
               }
               ;
            }
         });
      }
      
      function formCheck() {
          if ($("#checkId").val() != 'Yes') {
             alert("아이디 중복체크를 해주세요.");
             return false;
          }
          frm.action ="noteInsert.do";
          frm.submit();
       }
      </script>
</body>
</html>