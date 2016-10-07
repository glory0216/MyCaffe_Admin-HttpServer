<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.json.*" %>
<%@ include file="connection_info.jsp" %>

<%
	JSONObject jObject = new JSONObject();

	try {		
		//52.78.42.3
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, dbId, dbPw);
		stmt = conn.createStatement();
		
		String cafeIDX = request.getParameter("cafeIDX");
		String userIDX = request.getParameter("userIDX");
		String menuIDX = request.getParameter("menuIDX");
		
		sql = String.format("INSERT INTO TOrder(cafeIDX, userIDX, menuIDX, orderTotalPrice) SELECT '%s', '%s', '%s', menuPrice FROM TMenu WHERE menuIDX = '%s'", cafeIDX, userIDX, menuIDX, menuIDX);
		stmt.executeUpdate(sql);
	
		jObject.put("message", "Success");
		out.println(jObject);
		out.flush();
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}

%>