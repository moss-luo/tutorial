<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link type="image/x-icon" href="${ctx}/static/images/favicon.ico" rel="shortcut icon">
		<link href="${ctx}/static/bootstrap/2.3.2/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
		<script src="${ctx}/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
		<title>Tutorial示例:<sitemesh:title/></title>
		<sitemesh:head/>
	</head>
	<body data-target=".bs-docs-sidebar" data-spy="scroll">
		<%@ include file="/layouts/header.jsp"%>
		<div class="container">
			<div id="content" style="padding: 40px 0 40px;">
				<sitemesh:body/>
			</div>
		</div>
		<%@ include file="/layouts/footer.jsp"%>
	</body>
	<script src="${ctx}/static/bootstrap/2.3.2/js/bootstrap.min.js" type="text/javascript"></script>
</html>