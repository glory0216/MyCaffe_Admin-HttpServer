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
		String userPassword = request.getParameter("userPassword");
		String userNickname = request.getParameter("userNickname");
		String userPhone = request.getParameter("userPhone");
		
		sql = String.format("SELECT COUNT(*) AS count FROM TUser WHERE userId = '%s'", userID);
		rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
			if (rs.getInt("count") >= 1) {
				jObject.put("message", "이미 존재하는 ID 입니다.");
				out.println(jObject);
				out.flush();
			}
			
			else {
				sql = String.format("INSERT INTO TUser(userId, userPassword, userNickname, userPhone) VALUES ('%s', '%s', '%s', '%s')", userID, userPassword, userNickname, userPhone);
				stmt.executeUpdate(sql);
				jObject.put("message", "Success");
				out.println(jObject);
				out.flush();
			}	
		}
		
		
			
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}

%>