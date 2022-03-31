<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="js/jquery-3.6.0.min.js"></script>

<style>
.w-btn-gra1 {
    background: linear-gradient(-45deg, #33ccff 0%, #ff99cc 100%);
    color: white;
}



.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 23px 30px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
    float: left;
}



</style>	

<div class="slider-area ">
   <!-- Mobile Menu -->
   <div class="slider-active">
      <div class="online-cv cv-bg section-overly pt-90 pb-120" data-background="assets/img/hero/h1_hero.jpg">         
         <div class="container">
            <div class="row">
               <div class="col-xl-6 col-lg-9 col-md-10">
                  <div class="hero__caption">
                     <h1>Find the most exciting startup jobs!!!!</h1>
                  </div>
               </div>
            </div>
            <!-- Search Box -->
            <div class="row">
               <div class="col-xl-8">
                  <!-- form -->
                  <form action="Jsearch.do" class="search-box">
                     <div class="input-form">
                        <input type="text" name="Jsearch" placeholder="Job Tittle or keyword">
                     </div>                     
                     <div class="search-form">
                        <button class="w-btn w-btn-gra1"  type="submit">Find job</button>                        
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- slider Area End-->
<div class="our-services section-pad-t30">
	<div class="container">
		<!-- Section Tittle -->
		<div class="row">
			<div class="col-lg-12">
				<div class="section-tittle text-center">
					<span>FEATURED TOURS Packages</span>
					<c:if test="${memberId != null }">
						<h2>${memberName }님, 이런 일자리는 어떠세요?</h2>
					</c:if>
					<c:if test="${memberId == null}">
						<h2>인기 기업을 골라보세요.</h2>
					</c:if>
					<a href="sample.do">dd</a>					
				</div>
			</div>
		</div>
		<div class="row d-flex justify-contnet-center">
		<c:if test="${memberId != null }">
		<c:forEach items="${recommendList}" var="list">
			<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
				<div class="single-services text-center mb-30">
					<div class="services-ion">
						<span class="${list.companyImage }"></span>
					</div>
					<div class="services-cap">
						<h5>
							<a href="javascript:formFncR.submit()" onclick='formFncR(${list.jobOpeningNum})'>   ${list.companyName}</a>
						</h5>
						<span>${list.jobGroup }</span>						
					</div>
				</div>
			</div>
		</c:forEach>
		</c:if>
		
		<c:forEach items="${zzim}" var="list">
		<c:if test="${memberId == null || list.favorite == null}">		
			<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
				<div class="single-services text-center mb-30">
					<div class="services-ion">
						<span class="${list.companyImage }"></span>
					</div>
					<div class="services-cap">
						<h5>
							<a href="javascript:formFncR.submit()" onclick='formFncR(${list.jobOpeningNum})'>   ${list.companyName}</a>
						</h5>
						<span>${list.jobGroup }</span>
						<span>♥ ${list.count }</span>
					</div>
				</div>
			</div>
		</c:if>
		</c:forEach>
								
		</div>
		
		<form action="jobDetail.do" method="get" name="quickFrmR">
				<input type="hidden" name="jobOpeningNum">
		</form>
		
		<!-- More Btn -->
		<!-- Section Button -->
		<div class="row">
			<div class="col-lg-12">
				<div class="browse-btn2 text-center mt-50">
					<a href="job_listing.html" class="border-btn2">Browse All
						Sectors</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Our Services End -->
<!-- Online CV Area Start -->
<div class="online-cv cv-bg section-overly pt-90 pb-120" data-background="assets/img/gallery/cv_bg.jpg">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-10">
				<div class="cv-caption text-center">
					<p class="pera1">FEATURED TOURS Packages</p>
					<p class="pera2">Make a Difference with Your Online Resume!</p>
					<a href="#" class="border-btn2 border-btn4">Upload your cv</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Online CV Area End-->
<!-- Featured_job_start -->
<section class="featured-job-area feature-padding">
	<div class="container">
		<!-- Section Tittle -->
		<div class="row">
			<div class="col-lg-12">
				<div class="section-tittle text-center">
					<span>Recent Job</span>
					<h2>구직공고</h2>
					<form method="post">
						<div>
							<table border="1" align="center">
								<tr>
									<td><input type="checkbox" name="locationCheck" id="locationCheck" value="대구">대구</td>													
									<td><input type="checkbox" name="locationCheck" id="locationCheck" value="서울">서울</td>
									<td><input type="checkbox" name="locationCheck" id="locationCheck" value="부산">부산</td>
								</tr>
							</table>  							
						</div>	
						<button type="button" onclick="searchLocation()">검색</button>
					</form>
				</div>
			</div>
		</div>
		<form action="jobDetail.do" method="get" name="quickFrm">
				<input type="hidden" name="jobOpeningNum">
		</form>
		<div id = "row" class="row justify-content-center">
			<div id ="col" class="col-xl-10">
				<!-- single-job-content -->
				<c:forEach items="${jobList }" var="list">
				<div class="single-job-items mb-30">
					<div class="job-items">
						<div class="company-img">
							<a href="job_details.html"><img
								src="assets/img/icon/job-list1.png" alt=""></a>
						</div>
						<div class="job-tittle">
							<a href="javascript:formFnc.submit())" onclick='formFnc(${list.jobOpeningNum})'><h4>${list.companyName }</h4></a>
							<ul>
								<li>Creative Agency</li>
								<li><i class="fas fa-map-marker-alt"></i>${list.companyAddress }</li>
								<li>$3500 - $4000</li>
							</ul>
						</div>
					</div>
					<div class="items-link f-right">
						<a href="job_details.html">Full Time</a> <span>7 hours ago</span>
					</div>
				</div>
				</c:forEach>				
			</div>
		</div>
	</div>
</section>
<!-- Featured_job_end -->
<script>


function formFnc(jobOpening_num) {
	event.preventDefault();
	console.log(jobOpening_num)
	quickFrm.jobOpeningNum.value=jobOpening_num;
	quickFrm.submit();
}

function formFncR(jobOpening_num){
	event.preventDefault();
	console.log(jobOpening_num)
	quickFrmR.jobOpeningNum.value=jobOpening_num;
	quickFrmR.submit();
}




function searchLocation(){	
	var val = document.getElementsByName("locationCheck");
	var check = false;
	var selArray = [];
	var data = '';
	
	for(var i=0; i<val.length; i++){
		if(val[i].checked == true){			
			selArray.push(val[i].value);
			if(data != '')
				data = data + '-' + val[i].value;
			else
				data = val[i].value;
		}
	}
	if(data != null){
		$.ajax({
			url : "ajaxLocationSelect.do",
			type : "post",
			data : {"selectBox" : data},
		  dataType : "json",
		  success : function(result){
			  console.log(result);
			  
			  
			  var col = document.getElementById('col');
			  col.remove();
			  
			  var parentTag = document.getElementById('row');
			  
			  for(let i=0; i<result.length; i++){
			  			  
				  var reCol = document.createElement('div');
				  reCol.setAttribute('class', 'col-xl-10');
				  var row = document.getElementById('row');
				  row.append(reCol);
				  			  
				  var singleJob = document.createElement('div');
				  singleJob.setAttribute('class', 'single-job-items mb-30');
				  reCol.append(singleJob);
				  
				  var jobItems = document.createElement('div');
				  jobItems.setAttribute('class', 'job-items');
				  singleJob.append(jobItems);
				  
				  var companyImg = document.createElement('div');
				  companyImg.setAttribute('class', 'company-img');
				  jobItems.append(companyImg);
				  
				  var a = document.createElement('a');
				  a.setAttribute('href', 'job_details.html');
				  companyImg.append(a);
				  
				  var img = document.createElement('img');
				  img.setAttribute('src', 'assets/img/icon/job-list1.png')
				  a.append(img);
				  
				  var tittle = document.createElement('div');
				  tittle.setAttribute('class', 'job-tittle');
				  jobItems.append(tittle);
				  
				  var jsa = document.createElement('a');
				  jsa.setAttribute('href', 'javascript:formFnc.submit())');
				  jsa.setAttribute('onclick', 'formFnc(${list.jobOpeningNum})')
				  tittle.append(jsa);
				  
				  var h4 = document.createElement('h4');
				  h4.innerText = result[i].companyName
				  jsa.append(h4);
				 
				  var ul = document.createElement('ul');
				  tittle.append(ul);
				  
				  var li1 = document.createElement('li');
				  li1.innerText = 'Creative Agency'
				  ul.append(li1);
				  var li2 = document.createElement('li');
				  li2.innerText = result[i].companyAddress
				  ul.append(li2);
				  var li3 = document.createElement('li');			  
				  li3.innerText = '$3500 - $4000'
				  ul.append(li3);
				  
				  var itemLink = document.createElement('div');
				  itemLink.setAttribute('class', 'items-link f-right');
				  singleJob.append(itemLink);
				 
				  var ahj = document.createElement('a');
				  ahj.setAttribute('href', 'job_details.html');
				  ahj.innerText = 'Full Time'
				  itemLink.append(ahj);
				  
				  var span = document.createElement('span');
				  span.innerText = '7 hours ago';
				  itemLink.append(span);
			 	
				  
				  parentTag.append(itemLink);
			  }
		}
	})	
}

}

</script>