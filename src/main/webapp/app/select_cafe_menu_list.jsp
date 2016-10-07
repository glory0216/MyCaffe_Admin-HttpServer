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
		String tempType = request.getParameter("menuType");
		
		sql = String.format("SELECT menu.menuIDX, menu.menuType, menu.menuName, menu.menuPrice FROM TMenu AS menu, TCafe AS cafe WHERE menu.cafeIDX = cafe.cafeIDX AND cafe.cafeIDX = '%s' AND menu.menuType = '%s'", cafeIDX, tempType);
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			
			int menuIDX = rs.getInt("menuIDX");
			int menuType = rs.getInt("menuType");
			String menuName = rs.getString("menuName");
			String menuPrice = rs.getString("menuPrice");
			
			jObject = new JSONObject();
			jObject.put("menuIDX", menuIDX);
			jObject.put("menuType", menuType);
			jObject.put("menuName", menuName);
			jObject.put("menuPrice", menuPrice);
			
			jArray.put(jObject);
			
		}
		
		out.println(jArray);
		out.flush();
		
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}

%>