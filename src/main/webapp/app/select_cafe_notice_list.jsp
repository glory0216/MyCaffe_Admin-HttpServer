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
		
		sql = String.format("SELECT noticeParentIDX, noticeTitle, noticeCnt, noticeCreDtm, noticeContents FROM TNoticeBoard WHERE noticeDel = 0 AND cafeIDX = '%s' ORDER BY noticeParentIDX DESC", cafeIDX);
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int noticeParentIDX = rs.getInt("noticeParentIDX");
			String noticeTitle = rs.getString("noticeTitle");
			String noticeCreDtm = rs.getString("noticeCreDtm");
			String noticeContents = rs.getString("noticeContents");
			int noticeCnt = rs.getInt("noticeCnt");
			
			jObject = new JSONObject();
			jObject.put("noticeParentIDX", noticeParentIDX);
			jObject.put("noticeTitle", noticeTitle);
			jObject.put("noticeCreDtm", noticeCreDtm);
			jObject.put("noticeContents", noticeContents);
			jObject.put("noticeCnt", noticeCnt);
			
			jArray.put(jObject);
		}
		
		out.println(jArray);
		out.flush();
		
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}

%>