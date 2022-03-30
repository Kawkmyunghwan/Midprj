<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="our-services section-pad-t30">
	<div class="container">
		<!-- Section Tittle -->
		<div class="row">
			<div class="col-lg-12">
				<div class="section-tittle text-center">					
					<h2>환영합니다. ${memberId } 님!</h2>					
				</div>
			</div>
		</div>
		<div class="row d-flex justify-contnet-center">
		
			<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
				<div class="single-services text-center mb-30">
					<div class="services-ion">
						<a href="memberUpdateForm.do"><span class="flaticon-search"></span></a>
					</div>
					<div class="services-cap">
						<h5>
							<a href="memberUpdateForm.do">내 정보 관리</a>
						</h5>
						
					</div>
				</div>
			</div>
 
			<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
				<div class="single-services text-center mb-30">
					<div class="services-ion">
						<a href="notesListForm.do"><span class="flaticon-real-estate"></span></a>
					</div>
					<div class="services-cap">
						<h5>
							<a href="notesListForm.do">쪽지함</a>
						</h5>
						
					</div>
				</div>
			</div>
			
			<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
				<div class="single-services text-center mb-30">
					<div class="services-ion">
						<a href=""><span class="flaticon-content"></span></a>
					</div>
					<div class="services-cap">
						<h5>
							<a href="">찜 목록</a>
						</h5>						
					</div>
				</div>
			</div>
			
			<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
				<div class="single-services text-center mb-30">
					<div class="services-ion">
						<a href=""><span class="flaticon-tour"></span></a>
					</div>
					<div class="services-cap">
						<h5>
							<a href="">구독하기</a>
						</h5>
						
					</div>
				</div>
			</div>
			
		</div>		
		
	</div>
</div>
</body>
</html>