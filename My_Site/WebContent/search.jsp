<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DBconnect.DBconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	DBconnect db = new DBconnect();
	Connection conn = db.DBconnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
        

	String select_name = (String) request.getParameter("select_name");
	String word = (String) request.getParameter("word");

	if (select_name.equals("number")) {
		String sql = ("SELECT BODER_ID, TITLE, USER_NAME, WRITE_DATE FROM BODER WHERE "+select_name+" like '%"+word+"%' ORDER BY BODER_ID DESC");
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, word);

	} else if (select_name.equals("title")) {
		String sql = ("SELECT BODER_ID, TITLE, USER_NAME, WRITE_DATE FROM BODER WHERE "+select_name+" like %"+word+"% ORDER BY BODER_ID DESC");
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, word);
	} else {
		String sql = ("SELECT BODER_ID, TITLE, USER_NAME, WRITE_DATE FROM BODER ORDER BY BODER_ID DESC");
		pstmt = conn.prepareStatement(sql.toString());
		
	}

	rs = pstmt.executeQuery();
	
	while (rs.next()) {
		
		int idx = rs.getInt("BODER_ID");
		rs.getString("TITLE");
		rs.getString("USER_NAME");
		rs.getString("WRITE_DATE");
		
	}%>
	
