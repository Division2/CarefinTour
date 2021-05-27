<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="sidebar__single sidebar__category">
	<h3 class="sidebar__title">FAQ 카테고리</h3>
	<ul class="sidebar__category-list list-unstyled">
		<li><a href="support">전체</a></li>
	<c:forEach items="${Category }" var="category">
		<li><a href="supportOther?category=${category.Category }">${category.Category }</a></li>
	</c:forEach>
	</ul>
</div>