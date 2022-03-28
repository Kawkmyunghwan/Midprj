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
                              <li>Salary :  <span>${jobOpening.salary }</span></li>
                              <li>Application date : <span>12 Sep 2020</span></li>
                              <li>회사 홈페이지 :<span><a href="http://www.naver.com" style="color: black">${jobOpening.homepage }</a></span></li>                         
                          </ul>
                         <div class="apply-btn2" id="btn2">
                            <a href="" onclick='windowFnc(${jobOpening.jobOpeningNum});' id="a" class="btn">Apply Now</a>                                                                                                           
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
		event.preventDefault();
		quickFrm1.jobOpeningNum.value=jobOpening_num;
		quickFrm1.submit();
		var popUrl = 'notilesApply.do';
		var popOption = 'width=800,height=1000,location=no,status=no,scrollbars=yes'
		window.open(popUrl, popOption)
		
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
	
</script>
