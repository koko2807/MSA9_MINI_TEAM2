<%@page import="tje.DTO.RentalList"%>
<%@page import="java.util.List"%>
<%@page import="tje.Service.BookServiceImpl"%>
<%@page import="tje.Service.BookService"%>
<%@page import="tje.DTO.Book"%>
<%@page import="tje.Service.UserServiceImpl"%>
<%@page import="tje.Service.UserService"%>
<%@page import="tje.DTO.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션 사용 아이디
// 	String id = (String) session.getAttribute("id");
	
	User user = new User();
	UserService userService = new UserServiceImpl();
// 	user = userService.select(id);
	user = userService.select("joeun");
	
	RentalList rentalList = new RentalList();
	
	Book book = new Book();
	BookService bookService = new BookServiceImpl();
	List<Book> booklist = bookService.selectbyId(user);
	int count = booklist.size();
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="static/css/loanHistory.css">
</head>
<body>
<jsp:include page="mypage.jsp" />
<%
	String chapter3 = "대출이력";
 %>
	<main>
		<div class="container"> <!-- 버튼과 표 -->
				<div class="row d-flex text-center bg-gray"> <!-- 버튼 -->
					<div onClick="location.href='#'" class="border border-white col-2 border justify-content-center flex-fill py-2 mpbtn">대출 현황</div>
					<div class="border border-white col-2 border justify-content-center flex-fill py-2 mpbtnnow">대출 이력</div>
					<div onClick="location.href='#'" class="border border-white col-2 border justify-content-center flex-fill py-2 mpbtn">예약 현황</div>
					<div onClick="location.href='#'" class="border border-white col-2 border justify-content-center flex-fill py-2 mpbtn">찜한 도서</div>
					<div onClick="location.href='#'" class="border border-white col-2 border justify-content-center flex-fill py-2 mpbtn">희망 도서</div>
			</div>
			<div class="pt-3">
				<table class="table">
				  <thead>
				    <tr class="text-center bg-gray">
				      <th scope="col">번호</th>				      
				      <th scope="col">도서 정보</th>
				      <th scope="col">대출일</th>
				      <th scope="col">반납일</th>
				      <th scope="col">상태</th>
				    </tr>
				  </thead>
				  <tbody class="table-group-divider text-center">
				  <%
				  	for(int i=0; i<count; i++){
				  %>
				    <tr>
				      <th scope="row">1</th>
				      <td>팔꿈치를 주세요</td>
				      <td>2024/09/05</td>
				      <td>2024/09/05</td>
				      <td>반납</td>
				    </tr>
				   <%
				  	}
				   %>
				  </tbody>
				</table>
<!-- 				<div class="pagenation"> -->
<!-- 	             ≪ ＜ ＞ ≫ -->
<!-- 	             <a href="" class="pagelink">≪</a> -->
<!-- 	             <a href="" class="pagelink">＜</a> -->
<!-- 	             <a href="" class="pagelink selected">1</a> -->
<!-- 	             <a href="" class="pagelink">2</a> -->
<!-- 	             <a href="" class="pagelink">3</a> -->
<!-- 	             <a href="" class="pagelink">4</a> -->
<!-- 	             <a href="" class="pagelink">5</a> -->
<!-- 	             <a href="" class="pagelink">＞</a> -->
<!-- 	             <a href="" class="pagelink">≫</a> -->
<!-- 	            </div> -->
			</div>	
		</div>
	</main>
	<div class="pt-5">
		<jsp:include page="/layout/footer.jsp" />
	</div>
</body>
</html>