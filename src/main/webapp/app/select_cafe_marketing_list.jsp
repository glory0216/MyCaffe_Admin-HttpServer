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
		
		String cafeIDX = request.getParameter("cafeIDX");
		
		sql = String.format("SELECT marketing.marketingIDX, marketing.menuName, marketing.menuPrice, marketing.marketingTimeZone FROM TMarketing AS marketing, TMenu AS menu, TCafe AS cafe WHERE marketing.menuIDX = menu.menuIDX AND menu.cafeIDX = cafe.cafeIDX AND cafe.cafeIDX = '%s'", cafeIDX);
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			/*
			int menuType = rs.getInt("menuType");
			String menuName = rs.getString("menuName");
			String menuPrice = rs.getString("menuPrice");
			
			jObject = new JSONObject();
			jObject.put("menuType", menuType);
			jObject.put("menuName", menuName);
			jObject.put("menuPrice", menuPrice);
			
			jArray.put(jObject);
			*/
			
			int marketingIDX = rs.getInt("marketingIDX");
			String menuName = rs.getString("menuName");
			String menuPrice = rs.getString("menuPrice");
			int marketingTimeZone = rs.getInt("marketingTimeZone");
			
			jObject = new JSONObject();
			jObject.put("marketingIDX", marketingIDX);
			jObject.put("menuName", menuName);
			jObject.put("menuPrice", menuPrice);
			jObject.put("marketingTimeZone", marketingTimeZone);
			
			jArray.put(jObject);
		}
		
		out.println(jArray);
		out.flush();
		
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}

%>