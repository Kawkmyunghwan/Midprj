<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="featured-job-area feature-padding">
	<div class="container">
		<!-- Section Tittle -->
		<div class="row">
			<div class="col-lg-12">
				<div class="section-tittle text-center">
					<span>Recent Job</span>
					<h2>구직공고</h2>
				</div>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-xl-10">
				<!-- single-job-content -->
				<c:forEach items="${zzim }" var="list">
				<div class="single-job-items mb-30">
					<div class="job-items">
						<div class="company-img">
							<a href="job_details.html"><img
								src="assets/img/icon/job-list1.png" alt=""></a>
						</div>
						<div class="job-tittle">
							<a href="job_details.html"><h4>${list.companyName }</h4></a>
							<ul>
								<li>Creative Agency</li>
								<li><i class="fas fa-map-marker-alt"></i>Athens, Greece</li>
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