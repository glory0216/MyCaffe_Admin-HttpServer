<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<sec:authorize access="isAnonymous()">
<jsp:forward page="/openLoginPage.do"/>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<jsp:forward page="/loginSuccess.do"/>
</sec:authorize>