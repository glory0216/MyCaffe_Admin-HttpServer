<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	/*
	Connection conn = null;
	String url = "jdbc:mysql://localhost:3306/testdb";
	String dbId = "dev";
	String dbPw = "@#$wjqthrgjdyd";
	String sql = null;
	Statement stmt = null;
	PreparedStatement prestmt = null;
	ResultSet rs = null;
	*/
	
	Connection conn = null;
	String url = "jdbc:mysql://rds-mysql57.cfqxfzy63ozz.ap-northeast-2.rds.amazonaws.com/mycaffe";
	String dbId = "dev";
	String dbPw = "l2010332";
	String sql = null;
	Statement stmt = null;
	PreparedStatement prestmt = null;
	ResultSet rs = null;
	
%>