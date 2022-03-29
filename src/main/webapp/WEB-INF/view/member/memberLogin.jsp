<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>Login</h2>
                        <form action="memberLogin.do" method="POST">
                            <div class="group-input">
                                <label for="username">Username *</label>
                                <input type="text" id="memberId" name="memberId">
                            </div>
                            <div class="group-input">
                                <label for="pass">Password *</label>
                                <input type="password" id="memberPassword" name="memberPassword">
                            </div>
                            <div class="group-input gi-check">
                                <div class="gi-more">
                                    
                                       
                                </div>
                            </div>
                            <button class="btn head-btn1">Sign In</button>
                            <a href="naverLogin.do" id="naverIdLogin_loginButton" class="btn head-btn2">
                                 <span>네이버 로그인</span>
                              </a>
                              <a href="naverLogin.do" id="naverIdLogin_loginButton" class="btn head-btn2">
                                 <span>카카오 로그인</span>
                              </a>
                        </form>                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->