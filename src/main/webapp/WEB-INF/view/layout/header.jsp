<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
         <title>Job board HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/flaticon.css">
            <link rel="stylesheet" href="assets/css/price_rangs.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/animate.min.css">
            <link rel="stylesheet" href="assets/css/magnific-popup.css">
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/slick.css">
            <link rel="stylesheet" href="assets/css/nice-select.css">
            <link rel="stylesheet" href="assets/css/style.css">
            
            <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
   </head>

   <body>
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
       <div class="header-area header-transparrent">
           <div class="headder-top header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-2">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                            </div>  
                        </div>
                        <div class="col-lg-9 col-md-9">
                            <div class="menu-wrapper">
                                <!-- Main-menu -->
                                <div class="main-menu">
                                    <nav class="d-none d-lg-block">
                                        <ul id="navigation">                                           
                                            <li><a href="">HOT 100 </a>
                                            	<ul class="submenu">
                                                    <li><a href="hotSearch.do">조회수</a></li>
                                                    <li><a href="zzimSearch.do">찜</a></li>
                                                </ul>
                                            </li>                                            
                                            <li><a href="boardList.do">커뮤니티</a></li>
                                            <li><a href="contactForm.do">고객센터</a>
                                                <ul class="submenu">
                                                    <li><a href="inquiryForm.do">문의게시판</a></li>
                                                </ul>
                                            </li>
                                            <c:if test="${memberId eq 'admin'}">
                                            <li><a>회사정보</a>
                                                <ul class="submenu">
                                                    <li><a href="companyInsertForm.do">회사정보 입력</a></li>
                                                    <li><a href="companyInfoForm.do">회사리스트 조회</a></li>
                                                   
                                                </ul>
                                            </li>
                                            </c:if>
                                    
                                        </ul>
                                    </nav>
                                </div>          
                                <!-- Header-btn -->
                                <c:if test="${ memberId eq null }">
                           <div class="header-btn d-none f-right d-lg-block">
                              <a href="memberJoinForm.do" class="btn head-btn2">Register</a>
                              <a href="loginPage.do" class="btn head-btn2">Login</a> 
                              
                           </div>
                        </c:if>
                        <c:if test="${ memberId ne null }">
                           <div class="header-btn d-none f-right d-lg-block">
                              <a href="memberLogout.do" class="btn head-btn2">Logout</a>
                              <a href="myInfo.do" class="btn head-btn2">MyPage</a>
                           </div>
                        </c:if>                      
                    </div>
                </div>
           </div>
       </div>
        <!-- Header End -->
    </header>