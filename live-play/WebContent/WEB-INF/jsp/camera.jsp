<%@page import="live.recordCamera"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String url = "rtmp://localhost/live/record1";
	recordCamera.recordWebcamAndMicrophone(0, 4, url, 500, 500, 25);
%>
