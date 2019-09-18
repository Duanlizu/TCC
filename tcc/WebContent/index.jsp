<%@include file="/common/sub_header.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>后台管理</title>
		
	</head>
	<body>
		<jsp:include page="/top.jsp"></jsp:include>
		<div class="container clearfix">

			<jsp:include page="/left.jsp"></jsp:include>
			<!--/工具栏-->
			<div class="main-wrap">
				<div class="crumb-wrap">
					<div class="crumb-list">
						<i class="icon-font">&#xe06b;</i><span>欢迎使用管理系统。</span>
					</div>
				</div>

				<div class="result-wrap">
					<div class="result-title">
						<h1>
							基本信息
						</h1>
					</div>
					<div class="result-content">
						<ul class="sys-info-list">
							
							<li>
								<label class="res-lab">
									欢迎您
								</label>
								<span class="res-info"><%String name=(String)session.getAttribute("user"); %>
								<%=name %>
								</span>
							</li>

							<li>
								<label class="res-lab">
									版权所有
								</label>
								<span class="res-info">西安航空学院</span>
							</li>

							<li>
								<label class="res-lab">
									当前时间
								</label>
								<span class="res-info"><%=new Date().toLocaleString()%></span>
							</li>
							
							<li>
								<label class="res-lab">
									版本号
								</label>
								<span class="res-info">1.0.0.1</span>
							</li>
							
						</ul>
					</div>
				</div>

			</div>
			<!--/main-->
		</div>
	</body>
</html>