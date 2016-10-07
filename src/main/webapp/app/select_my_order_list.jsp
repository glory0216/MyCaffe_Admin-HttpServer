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
		
		sql = String.format("SELECT torder.orderPayType, torder.orderReceivedTime, torder.orderTotalPrice, torder.orderFlag, cafe.cafeName, menu.menuName FROM TUser AS user, TMenu AS menu, TOrder AS torder, TCafe AS cafe WHERE torder.menuIDX = menu.menuIDX AND torder.userIDX = user.userIDX AND torder.cafeIDX = cafe.cafeIDX AND menu.cafeIDX = cafe.cafeIDX AND user.userIDX = '%s'", userIDX);
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int orderPayType = rs.getInt("orderPayType");
			String orderReceivedTime = rs.getString("orderReceivedTime");
			String orderTotalPrice = rs.getString("orderTotalPrice");
			String orderFlag = rs.getString("orderFlag");
			String cafeName = rs.getString("cafeName");
			String menuName = rs.getString("menuName");
			
			jObject = new JSONObject();
			jObject.put("orderPayType", orderPayType);
			jObject.put("orderReceivedTime", orderReceivedTime);
			jObject.put("orderTotalPrice", orderTotalPrice);
			jObject.put("orderFlag", orderFlag);
			jObject.put("cafeName", cafeName);
			jObject.put("menuName", menuName);
			
			jArray.put(jObject);
		}
		
		out.println(jArray);
		out.flush();
		
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}

%>