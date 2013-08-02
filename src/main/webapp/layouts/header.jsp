<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
	<head>
		<script type="text/javascript">
			$(function(){
				$("li>a").bind('click', function() {
					$(".active").removeClass("active");
					$(this).parent().addClass("active");
				});
			});
		</script>
	</head>
	<body>
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container-fluid">
					<a class="btn btn-navbar" data-target=".navbar-responsive-collapse" data-toggle="collapse"> </a>
					<a class="brand" href="#">tutotial范例</a>
		
					<div class="nav-collapse collapse navbar-responsive-collapse">
						<ul class="nav" >
							<li id="navbar_default" class="active"><a href="${ctx}/">主页</a></li>
							<li id="navbar_order"><a href="order">订单列表</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>