<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
   String path = request.getContextPath();
 %>
<div class="topbar-wrap white">
			<div class="topbar-inner clearfix">
				<div class="topbar-logo-wrap clearfix">
					<a class="on" ><img src="<%=path %>/limg/logo1.jpg" >西航停车场</a>
				</div>
				<div class="top-info-wrap">
					<ul class="top-info-list clearfix">
						
						<li >
							<a href="<%=path %>/loginout.jsp" >退出&nbsp;</a><%=new Date().toLocaleString()%><br>
							
						</li>
					</ul>
				</div>
			</div>
		</div>
