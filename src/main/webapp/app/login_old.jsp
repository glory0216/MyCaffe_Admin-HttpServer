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
		
		sql = String.format("SELECT COUNT(*) AS count FROM TUser WHERE userId = '%s'", userID);
		rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
			if (rs.getInt("count") == 1) {
				sql = String.format("SELECT userPassword FROM TUser WHERE userId = '%s'", userID);
				rs = stmt.executeQuery(sql);
				
				if (rs.next()) {
					String validUserPassword = rs.getString("userPassword");
					if (validUserPassword.equals(userPassword)) {
						jObject.put("message", "Success");
						out.println(jObject);
						out.flush();
					}
					else {
						jObject.put("message", "비밀번호가 일치하지 않습니다.");
						out.println(jObject);
						out.flush();			
					}
				}
				
			}
			else {
				jObject.put("message", "존재하지 않는 ID 입니다.");
				out.println(jObject);
				out.flush();
			}	
		}
		
		
			
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}

%>