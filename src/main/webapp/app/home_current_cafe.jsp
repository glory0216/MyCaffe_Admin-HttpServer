<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.json.*" %>
<%@ include file="connection_info.jsp" %>

<%
	JSONObject jObject = new JSONObject();
	JSONArray jArray = new JSONArray();

	try {		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, dbId, dbPw);
		stmt = conn.createStatement();
		
		String userID = request.getParameter("userID");
		
		sql = String.format("SELECT userFavCafe FROM TUser WHERE userId = '%s'", userID);
		rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
			int userFavCafe = rs.getInt("userFavCafe");
			jObject.put("object", userFavCafe);
			out.println(jObject);
			out.flush();
		}
		
		
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}

%>