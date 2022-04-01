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
                        
                         <div class="job-post-details">
	                        <div class="post-details2  mb-50">
	                                <div id="map" style="width:100%;height:350px;"></div>
	                        </div>
	                     </div>
                         
                        
                        
                        <!-- 코맨트 테이블에 들어있는 데이터 만큼 반복 -->
                   		<div class="comments-area">	
                   			<c:if test="${ SUBSCRIPTION eq null }">                   			                  					                  
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
			                              </div>
			                           </div>
			                        </div>
			                     </div>
			                  </div>
			                  </c:if>
			               </div>
               
               
               
               
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
                        <button type="button" class="button button-contactForm btn_1 boxed-btn" onClick="insertComment()">Send Message</button>
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
                              <c:if test="${subscription eq 1 }">
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
       <form id ="frm2" action="home.do" method="post">      
       </form>
       
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1a684655c5e2122f2fb8dccc310bc71a&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${company.COMPANYADDRESS}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${company.COMPANYNAME}</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
       
       
<script type="text/javascript">
	var memberNum = "<c:out value = '${memberNum}'/>";
	var subs = "<c:out value = '${subscription}'/>";
	
	
	function formFnc(jobOpening_num) {
	    event.preventDefault();
	    quickFrm.jobOpeningNum.value=jobOpening_num;
	    quickFrm.submit();      
	    }
	
	function windowFnc(jobOpening_num){
		if(memberNum != null){
			var popUrl = 'notilesApply.do?jobOpeningNum='+jobOpening_num+'';
			var popOption = 'left=600, width=600, height=650, location=no, status=no, scrollbars=yes'
			window.open(popUrl, "name", popOption);
			frm2.submit();
		}
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
		if(memberNum != null){
			document.getElementById('a').remove();
			var aBtn = document.createElement('a');
			aBtn.setAttribute('href', '');
			aBtn.setAttribute('class', 'btn');
			aBtn.innerText = '지원완료';
			btn2.append(aBtn);
		}
	}
	
	
	
	
	
	// 댓글 INSERT	
	
	
	
	function insertComment(){	
		var cm = document.getElementById('comment');
		var cv = cm.value;	
		var memberNum = "<c:out value = '${memberNum}'/>";

		if(memberNum != null){
			var xhtp = new XMLHttpRequest();
			xhtp.open('post', 'jobOpeningComment.do')
			xhtp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhtp.send('commentContent='+cv+'&jobOpeningNum='+jobOpNum+'&memberNum='+memberNum);
			xhtp.onload = function() {
				var result = xhtp.responseText;
		        result = JSON.parse(result);
		        console.log(result);
	
				var commentList = document.createElement('div');
				commentList.setAttribute('class', 'comment-list');
				
				var commentArea = document.querySelector('.comments-area');
				commentArea.append(commentList);
				
				var singleComment = document.createElement('div');
				singleComment.setAttribute('class', 'single-comment justify-content-between d-flex');
				commentList.append(singleComment);
				
				var userJustify = document.createElement('div');
				userJustify.setAttribute('class', 'user justify-content-between d-flex')
				singleComment.append(userJustify);
				
				var thumb = document.createElement('div');
				thumb.setAttribute('class', 'thumb');
				userJustify.append(thumb);
				
				var img = document.createElement('img');
				img.setAttribute('src', "assets/img/comment/comment_1.png");
				img.setAttribute('alt', "");
				thumb.append(img);
				
				var desc = document.createElement('div');
				desc.setAttribute('class', 'desc');
				userJustify.append(desc);
				
				var p = document.createElement('p');
				p.innerText = result[result.length-1].commentContent;
				desc.append(p);
				
				var dFlex = document.createElement('div');
				dFlex.setAttribute('class', 'd-flex justify-content-between')
				desc.append(dFlex);
				
				var dFlex2 = document.createElement('div');
				dFlex2.setAttribute('class', 'd-flex align-items-center');
				dFlex.append(dFlex2);
				
				var h5 = document.createElement('h5');
				dFlex2.append(h5);
				
				var a = document.createElement('a');
				a.setAttribute('href', '#')
				a.innerText = result[result.length-1].memberName;
				h5.append(a);
				
				var date = document.createElement('p');
				date.setAttribute('class', 'date');
				date.innerText = result[result.length-1].commentTime;
				dFlex2.append(date);
				
				
			}
		}
	}			
	
	
	//댓글 SELECT
	
	var jobOpNumComment = []
		<c:forEach items='${comment}' var='comment'>
		jobOpNumComment.push("${comment.jobOpeningNum}")
		</c:forEach>
		console.log(jobOpNumComment);	
	
		
	var xhtp = new XMLHttpRequest();
		xhtp.open('post', 'AjaxJobOpeningCommentSel.do')		
		xhtp.send();
		xhtp.onload = function() {
			var result = xhtp.responseText;			
			result = JSON.parse(result);
			console.log(result);
			
			for(let i=0; i<result.length; i++){
				if(jobOpNumComment[i] == jobOpNum){
						var commentList = document.createElement('div');
						commentList.setAttribute('class', 'comment-list');
						
						var commentArea = document.querySelector('.comments-area');
						commentArea.append(commentList);
						
						var singleComment = document.createElement('div');
						singleComment.setAttribute('class', 'single-comment justify-content-between d-flex');
						commentList.append(singleComment);
						
						var userJustify = document.createElement('div');
						userJustify.setAttribute('class', 'user justify-content-between d-flex')
						singleComment.append(userJustify);
						
						var thumb = document.createElement('div');
						thumb.setAttribute('class', 'thumb');
						userJustify.append(thumb);
						
						var img = document.createElement('img');
						img.setAttribute('src', "assets/img/comment/comment_1.png");
						img.setAttribute('alt', "");
						thumb.append(img);
						
						var desc = document.createElement('div');
						desc.setAttribute('class', 'desc');
						userJustify.append(desc);
						
						var p = document.createElement('p');
						p.innerText = result[i].commentContent;
						desc.append(p);
						
						var dFlex = document.createElement('div');
						dFlex.setAttribute('class', 'd-flex justify-content-between')
						desc.append(dFlex);
						
						var dFlex2 = document.createElement('div');
						dFlex2.setAttribute('class', 'd-flex align-items-center');
						dFlex.append(dFlex2);
						
						var h5 = document.createElement('h5');
						dFlex2.append(h5);
						
						var a = document.createElement('a');
						a.setAttribute('href', '#')
						a.innerText = result[i].memberName;
						h5.append(a);
						
						var date = document.createElement('p');
						date.setAttribute('class', 'date');
						date.innerText = result[i].commentTime;
						dFlex2.append(date);									
				}
			}
			
		}

	
	
	
</script>
