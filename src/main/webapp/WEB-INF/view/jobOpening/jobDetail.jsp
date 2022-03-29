<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!-- Hero Area Start-->
        <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>${jobOpening.jobGroup }</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <!-- Hero Area End -->
<!-- job post company Start -->
        <div class="job-post-company pt-120 pb-120">
            <div class="container">
                <div class="row justify-content-between">
                    <!-- Left Content -->
                    <div class="col-xl-7 col-lg-8">
                        <!-- job single -->
                        <div class="single-job-items mb-50">
                            <div class="job-items">
                                <div class="company-img company-img-details">
                                    <a href="#"><img src="assets/img/icon/job-list1.png" alt=""></a>
                                </div>
                                <div class="job-tittle">
                                    <a href="#">
                                        <h4>${jobOpening.jobGroup }</h4>
                                    </a>
                                    <ul>
                                        <li>${jobOpening.companyName }</li>
                                        <li><i class="fas fa-map-marker-alt"></i>${jobOpening.companyAddress }</li>                                        
                                        	<li>${jobOpening.salary }</li>                                                                              
                                    </ul>
                                </div>
                            </div>
                        </div>
                          <!-- job single End -->
                       
                        <div class="job-post-details">
                            <div class="post-details1 mb-50">
                                <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Job Description</h4>
                                </div>
                                <p>${jobOpening.companyContent }</p>
                            </div>
                            <div class="post-details2  mb-50">
                                 <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Required Knowledge, Skills, and Abilities</h4>
                                </div>
                               <ul>
                                   <li>System Software Development</li>
                                   <li>Mobile Applicationin iOS/Android/Tizen or other platform</li>
                                   <li>Research and code , libraries, APIs and frameworks</li>
                                   <li>Strong knowledge on software development life cycle</li>
                                   <li>Strong problem solving and debugging skills</li>
                               </ul>
                            </div>
                            <div class="post-details2  mb-50">
                                 <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Education + Experience</h4>
                                </div>
                               <ul>
                                   <li>3 or more years of professional design experience</li>
                                   <li>Direct response email experience</li>
                                   <li>Ecommerce website design experience</li>
                                   <li>Familiarity with mobile and web apps preferred</li>
                                   <li>Experience using Invision a plus</li>
                               </ul>
                            </div>
                        </div>
                        
                        
                        
                        
                        <c:forEach items="comment" var="comment">
                        <!-- 코맨트 테이블에 들어있는 데이터 만큼 반복 -->
                        <c:if test="${ SUBSCRIPTION ne null }">
                   		<div class="comments-area">
			                  <h4>05 Comments</h4>
			                  <div class="comment-list">
			                     <div class="single-comment justify-content-between d-flex">
			                        <div class="user justify-content-between d-flex">
			                           <div class="thumb">
			                              <img src="assets/img/comment/comment_1.png" alt="">
			                           </div>
			                           <div class="desc">
			                              <p class="comment">
			                                 Multiply sea night grass fourth day sea lesser rule open subdue female fill which them
			                                 Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
			                              </p>
			                              <div class="d-flex justify-content-between">
			                                 <div class="d-flex align-items-center">
			                                    <h5 id="commentName">
			                                       <a href="#" >Emilly Blunt</a>
			                                    </h5>
			                                    <p class="date">December 4, 2017 at 3:12 pm </p>
			                                 </div>
			                                 <div class="reply-btn">
			                                    <a href="#" class="btn-reply text-uppercase">reply</a>
			                                 </div>
			                              </div>
			                           </div>
			                        </div>
			                     </div>
			                  </div>
			               </div>
			               </c:if>
			               </c:forEach>
               
               
               
               
               <div class="comment-form">
                  <h4>기업 리뷰</h4>
                  <form class="form-contact comment_form" action="#" id="commentForm">
                     <div class="row">
                        <div class="col-12">
                           <div class="form-group">
                              <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
                                 placeholder="Write Comment" ></textarea>
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <button type="submit" class="button button-contactForm btn_1 boxed-btn" onClick="insertComment()">Send Message</button>
                     </div>
                  </form>
               </div>

                    </div>
                    <!-- Right Content -->
                    <div class="col-xl-4 col-lg-4">
                        <div class="post-details3  mb-50">
                            <!-- Small Section Tittle -->
                           <div class="small-section-tittle">
                               <h4>Job Overview</h4>
                           </div>
                          <ul>
                              <li>Posted date : <span>12 Aug 2019</span></li>
                              <li>Location : <span>${jobOpening.companyAddress }</span></li>
                              <li>Vacancy : <span>02</span></li>
                              <li>Job nature : <span>Full time</span></li>
                              <c:if test="${ SUBSCRIPTION ne null }">
                              <li>Salary :  <span>${jobOpening.salary }</span></li>
                              </c:if>
                              <li>Application date : <span>12 Sep 2020</span></li>
                              <li>회사 홈페이지 :<span><a href="http://www.naver.com" style="color: black">${jobOpening.homepage }</a></span></li>                   
                          </ul>
                         <div class="apply-btn2" id="btn2">                                              							       
							<button type="button" class="btn btn-primary" id="a" onclick="windowFnc(${jobOpening.jobOpeningNum})">Apply Now</button>							  					                        	            
                            <a href="" onclick='formFnc(${jobOpening.jobOpeningNum})' id="btn" class="btn">♡</a>                                                                                                
                         </div>
                       </div> 
                                                                                            
                       <form action="zzim.do" method="get" name="quickFrm">
                       		<input type="hidden" name="jobOpeningNum">
                       </form>
                       <form action="notilesApply.do" method="get" name="quickFrm1">
                       		<input type="hidden" name="jobOpeningNum">
                       </form>

                       
                       
                        <div class="post-details4  mb-50">
                            <!-- Small Section Tittle -->
                           <div class="small-section-tittle">
                               <h4>Company Information</h4>
                           </div>
                              <span>Colorlib</span>
                              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            <ul>
                                <li>Name: <span>Colorlib </span></li>
                                <li>Web : <span> colorlib.com</span></li>
                                <li>Email: <span>carrier.colorlib@gmail.com</span></li>
                            </ul>
                            
                            
                       </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- job post company End -->
       
<script type="text/javascript">


	function formFnc(jobOpening_num) {
	    event.preventDefault();
	    quickFrm.jobOpeningNum.value=jobOpening_num;
	    quickFrm.submit();      
	    }
	
	function windowFnc(jobOpening_num){
		var popUrl = 'notilesApply.do?jobOpeningNum='+jobOpening_num+'';
		var popOption = 'left=600, width=600, height=650, location=no, status=no, scrollbars=yes'
		window.open(popUrl, "name", popOption);	
	}
		
// -----------------------------------------------------------------	
	var jobOpNum = "<c:out value = '${jobOpening.jobOpeningNum}'/>";	
	var zzimJobOpNum = [] 
	   <c:forEach items='${zzim}' var='zzim'>
	   zzimJobOpNum.push("${zzim.jobOpeningNum}");
	   </c:forEach>

	if(zzimJobOpNum.indexOf(jobOpNum) != -1){
		document.getElementById('btn').remove();
		var btn = document.createElement('a');
		btn.setAttribute('href', '');
		btn.setAttribute('class', 'btn');
		btn.innerText = '♥';
		console.log(btn);
		var btn2 = document.getElementById('btn2');
		btn2.append(btn);
	}
//	찜 목록에 추가한 구인공고가 아니면 비어있는 하트, 찜 목록에 추가했으면 빨간색 하트가 뜨게 함..
//	비어있는 a 태그 속성에는 찜 테이블에서 삭제시키는 기능 만들 예정.(빨간색 하트일때 클릭하면 찜 테이블에서 삭제되게 끔)
//-----------------------------------------------------------------
	var applyJobOpNum = []
	   <c:forEach items='${apply}' var='apply'>
	   applyJobOpNum.push("${apply.jobOpeningNum}");
	   </c:forEach>
	   
	   console.log(applyJobOpNum);
	   console.log(jobOpNum);
	   
	if(applyJobOpNum.indexOf(jobOpNum) != -1){
		document.getElementById('a').remove();
		var aBtn = document.createElement('a');
		aBtn.setAttribute('href', '');
		aBtn.setAttribute('class', 'btn');
		btn.innerText = '지원완료';
		btn2.append(aBtn);
	}
	
	
	
	
	
	// 댓글 INSERT
	
	function insertComment(){
		event.preventdefault()
		var memberNum = "<c:out value = '${memberNum}'/>";
		var cv = comment.value
		
		var xhtp = new XMLHttpRequest();
		xhtp.open('post', 'jobOpeningComment.do')
		xhtp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhtp.send('commentContent='+cv+'&jobOpeningNum='+jobOpNum+'&memberNum='+memberNum);
		xhtp.onload = function() {
			var result = xhtp.responseText;
			result = JSON.parse(result);
			var desc = document.querySelector('.desc');
			var p = document.createElement('p');
			p.innerText = result.commentContent;
			desc.append(p);
			
			var commentName = document.getElementById('commentName');
			var aTag = document.createElement('a');
			aTag.setAttribute('href', '');
			aTag.innerText = result.memberId;
			commentName.append(aTag);
			
			var sysdate = document.querySelector('.d-flex align-items-center');
			var sp = document.createElement('p');
			sp.innerText = result.commentDate;
			sysdate.append(sp);
			
		}
	}
	
	
	//댓글 SELECT
	
	var xhtp = new XMLHttpRequest();
	xhtp.open('post', 'jobOpeningComment.do')
	xhtp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhtp.send('commentContent='+cv+'&jobOpeningNum='+jobOpNum+'&memberNum='+memberNum);
	xhtp.onload = function() {
		var result = xhtp.responseText;
		result = JSON.parse(result);
		var desc = document.querySelector('.desc');
		var p = document.createElement('p');
		p.innerText = result.commentContent;
		desc.append(p);
		
		var commentName = document.getElementById('commentName');
		var aTag = document.createElement('a');
		aTag.setAttribute('href', '');
		aTag.innerText = result.memberId;
		commentName.append(aTag);
		
		var sysdate = document.querySelector('.d-flex align-items-center');
		var sp = document.createElement('p');
		sp.innerText = result.commentDate;
		sysdate.append(sp);
		
	}
	
	
	
	
	
</script>
