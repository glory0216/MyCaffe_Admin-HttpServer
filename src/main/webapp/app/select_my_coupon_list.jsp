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
		
		String userIDX = request.getParameter("userIDX");
		
		sql = String.format("SELECT cafe.cafeName, coupon.couponAmount FROM TUser AS user, TCafe AS cafe, TCoupon AS coupon WHERE coupon.cafeIDX = cafe.cafeIDX AND coupon.userIDX = user.userIDX AND user.userIDX = '%s'", userIDX);
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int couponAmount = rs.getInt("couponAmount");
			String cafeName = rs.getString("cafeName");
			
			jObject = new JSONObject();
			jObject.put("couponAmount", couponAmount);
			jObject.put("cafeName", cafeName);
			
			jArray.put(jObject);
		}
		
		out.println(jArray);
		out.flush();
		
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}

%>