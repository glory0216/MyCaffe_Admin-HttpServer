<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.json.*" %>
<%@ include file="connection_info.jsp" %>

<%
	JSONObject jObject;
	JSONArray jArray = new JSONArray();

	try {		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, dbId, dbPw);
		stmt = conn.createStatement();
		
		String tempLocation = request.getParameter("tempLocation");
		tempLocation = "%" + tempLocation + "%";
		
		sql = String.format("SELECT * FROM TCafe WHERE cafeLocation LIKE '%s'", tempLocation);
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int cafeIDX = rs.getInt("cafeIDX");
			String cafeName = rs.getString("cafeName");
			String cafeTel = rs.getString("cafeTel");
			String cafeLocation = rs.getString("cafeLocation");
			String cafeComment = rs.getString("cafeComment");
			String cafeLogo = rs.getString("cafeLogo");
			
			jObject = new JSONObject();
			jObject.put("cafeIDX", cafeIDX);
			jObject.put("cafeName", cafeName);
			jObject.put("cafeTel", cafeTel);
			jObject.put("cafeLocation", cafeLocation);
			jObject.put("cafeComment", cafeComment);
			jObject.put("cafeLogo", cafeLogo);
			
			jArray.put(jObject);
		}
		
		out.println(jArray);
		out.flush();
		
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}

%>