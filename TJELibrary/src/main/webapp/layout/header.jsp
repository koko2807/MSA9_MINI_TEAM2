<%@page import="tje.DTO.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/layout/common.jsp" %>
<link rel="stylesheet" href="<%= root %>/static/css/header.css">
<header class="">
	<div class="header">
	
		<div class="border-bottom py-2">
			<div class="container">
				<div class="d-flex justify-content-end">
					<div class="inner d-flex column-gap-3">
						 <%
                           User user = (User) session.getAttribute("user");
                           if (user != null) {
                        %>
                            <a href="logout.jsp">로그아웃</a>
                        <%
                            } else {
                        %>
                            <a href="mainLogin.jsp">로그인</a>
                        <%
                            }
                        %>
                        <a href="loanStatus.jsp">내서재</a>
                        <a href="signup.jsp">회원가입</a>
					</div>
				</div>
			</div>	
		</div>
		
		<div class="container1">
			<div class="d-flex align-items-center justify-content-center column-gap-5 py-3 me-5">
				<div class="item">
					<a href="index.jsp"><img class="logo" src="<%= root %>/static/img/logo.png" /></a>
				</div>
				<div class="item">
					<div class="background-border d-flex justify-content-start align-items-center column-gap-5">
							<input class="input-search" placeholder="도서검색" />
						<a href="" class="search">
							<i class="fa fa-search fa-lg" style="color: #fffafa"></i>
						</a>
					</div>
				</div>
				<div class="item">
					<a href="search.jsp" class="btn-custom">고급검색</a>
				</div>

			</div>
		</div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</header>