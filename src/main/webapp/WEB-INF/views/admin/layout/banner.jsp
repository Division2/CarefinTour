<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="main">
		<div class="sidebar-brand-icon">
			<img src='<c:url value="/resources/image/MainLogo.png"/>' width="100" height="100" style="float:left;">
		</div>
		<div class="sidebar-brand-text mx-1">케어핀투어</div>
	</a>
	<hr class="sidebar-divider my-0">
	<li class="nav-item active">
		<a class="nav-link" href="main">
			<i class="fas fa-fw fa-tachometer-alt"></i>
			<span>Home</span>
		</a>
	</li>
	<hr class="sidebar-divider">
	<div class="sidebar-heading">사이트 관리</div>
	<li class="nav-item">
		<a class="nav-link" href="banner">
			<i class="fas fa-fw fa-table"></i>
			<span>배너 관리</span>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="hotel">
			<i class="fas fa-fw fa-table"></i>
			<span>호텔 상품</span>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="packageproduct">
			<i class="fas fa-fw fa-table"></i>
			<span>패키지 상품</span>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="theme">
			<i class="fas fa-fw fa-table"></i>
			<span>테마별 상품</span>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="info">
			<i class="fas fa-fw fa-table"></i>
			<span>여행 정보</span>
		</a>
	</li>
	<hr class="sidebar-divider">
	<div class="sidebar-heading">회원 관리</div>
	<li class="nav-item">
		<a class="nav-link" href="member">
			<i class="fas fa-fw fa-table"></i>
			<span>회원 목록</span>
		</a>
	</li>
	<hr class="sidebar-divider">
	<div class="sidebar-heading">주문 관리</div>
	<li class="nav-item"><a class="nav-link" href="order">
		<i class="fas fa-fw fa-table"></i>
		<span>주문 관리</span>
	</a>
	</li>
	<hr class="sidebar-divider">
	<div class="sidebar-heading">통계</div>
	<li class="nav-item">
		<a class="nav-link" href="visit">
			<i class="fas fa-fw fa-table"></i>
			<span>방문자 수</span>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="board">
			<i class="fas fa-fw fa-table"></i>
			<span>게시글 작성 수</span>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="period">
			<i class="fas fa-fw fa-table"></i>
			<span>기간별 매출</span>
		</a>
	</li>
	<hr class="sidebar-divider">
	<div class="sidebar-heading">고객센터</div>
	<li class="nav-item">
		<a class="nav-link" href="notice">
			<i class="fas fa-fw fa-table"></i>
			<span>공지사항</span>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="inquire">
			<i class="fas fa-fw fa-table"></i>
			<span>1:1 문의</span>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="faq">
			<i class="fas fa-fw fa-table"></i>
			<span>FAQ 목록</span>
		</a>
	</li>
</ul>