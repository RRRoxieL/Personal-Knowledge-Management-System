<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="javabean.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理-用户管理</title>
    <!-- Bootstrap -->
	<link href="bootstrap/css/button.css" rel="stylesheet" />
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="bootstrap/css/semantic.min.css" rel="stylesheet" />
	<link href="bootstrap/css/icons.css" rel="stylesheet" />
		
	<!-- Bootstrap Extended -->
	<link href="bootstrap/extend/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet" />
	<link href="bootstrap/extend/jasny-bootstrap/css/jasny-bootstrap-responsive.min.css" rel="stylesheet" />
	<link href="bootstrap/extend/bootstrap-wysihtml5/css/bootstrap-wysihtml5-0.0.2.css" rel="stylesheet" />
	
	<!-- JQueryUI v1.9.2 -->
	<link rel="stylesheet" href="theme/scripts/jquery-ui-1.9.2.custom/css/smoothness/jquery-ui-1.9.2.custom.min.css" />
	
	<!-- Glyphicons -->
	<link rel="stylesheet" href="theme/css/glyphicons.css" />
	
	<!-- Bootstrap Extended -->
	<link rel="stylesheet" href="bootstrap/extend/bootstrap-select/bootstrap-select.css" />
	<link rel="stylesheet" href="bootstrap/extend/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />
	
	<!-- Uniform -->
	<link rel="stylesheet" media="screen" href="theme/scripts/pixelmatrix-uniform/css/uniform.default.css" />

	<!-- JQuery v1.8.2 -->
	<script src="theme/scripts/jquery-1.8.2.min.js"></script>
	
	<!-- Modernizr -->
	<script src="theme/scripts/modernizr.custom.76094.js"></script>
	
	<!-- MiniColors -->
	<link rel="stylesheet" media="screen" href="theme/scripts/jquery-miniColors/jquery.miniColors.css" />
	
	<!-- Theme -->
	<link rel="stylesheet" href="theme/css/style.min.css?1361377811" />
	
	<!-- LESS 2 CSS -->
	<script src="theme/scripts/less-1.3.3.min.js"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="text/javascript">
function check(){
// 用户
		var name = document.getElementById("search");			
		if(name.value==''){
			
			name.focus();
			return false;
		}
}
</script>


  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63264",secure:"63271"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-1" data-genuitec-path="/FileManagementAdmin/WebRoot/adminUserList.jsp">
  
  <%
String adminName= "";
	Cookie[] cookies = request.getCookies();
	if (cookies!=null){
		for (Cookie c :cookies){
			if (c.getName().equals("adminName")){
				adminName=c.getValue();
				if (adminName==""){
					response.sendRedirect("loginAdmin.jsp");
					break;
				}
	   		}
		}
	}  

String errorInfo = (String)session.getAttribute("selectUserError");         // 获取错误属性
if(errorInfo != null) {
%>
<script type="text/javascript" language="javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-1" data-genuitec-path="/FileManagementAdmin/WebRoot/adminUserList.jsp">
alert("<%=errorInfo%>");                                            // 弹出错误信息
</script>
<%
}
%>

<div class="navbar main">

	<div class="container">
		<div class="row">
			<div class="span12 relativeWrap">
			
				<button type="button" class="btn btn-navbar visible-phone">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
	
				<ul id="menu" class="hidden-phone">
					<li>
						<a href="homepageAdmin.jsp" class="menuToggle">首页</a>
					</li>
					<li>
						<a href="adminFileListServlet" class="menuToggle">文档管理</a>
					</li>
					<li class="active">
						<a href="adminUserListServlet" class="menuToggle">用户管理</a>
					</li>
				</ul>
				
				<table class="profile"><tbody><tr>
				<td style="width:75px;padding-top:10px;"><strong style="color:#eeeeee"><%=adminName %></strong></td>
				<td><div class="dropdown">
					<img data-toggle="dropdown" src="bootstrap/img/person.png" 
					style="width:50px;height:50px;margin-top:17px;"/>
					<ul class="dropdown-menu" style="min-width:50px">
		            <li>
		                <a href="logoutAdminServlet">退出</a></li>
		        	</ul>
					</div></td>
				</tr>
				</tbody>
				</table>
				</div>
			</div>
		</div>
</div>

    <div id="content" class="one">	

<div class="widget widget-4" style="margin-top: 0px;">
	<div class="widget-head" style="float: left;margin-top: 10;margin-left:20px;">
		<h4 class="heading" style="color:#5C5C5C;">用户列表</h4>
	</div>
	<div class="widget-body" style="padding: 0;">
		 <div class="pull-right" >
		 <table border="0" style="margin: 20px 20px 0px 0px">
			  <tbody>
			    <tr>
			      <td width="225px">
					<div class="input" style="float: left">
					<form action="selectUserListServlet" method="post" onsubmit="return check(this)">
			         <input type="text" name="search" id="search" placeholder="输入用户名" 
			         style="height:30px;border-radius:4px 0px 0px 4px;width:140px;margin-top:10px;">
			         <input type="submit" value="搜索" class="button button-rounded button-tiny" 
			         style="width: 53px;margin-top: 0px;height:31px;margin-left:-7px;border-radius:0px 4px 4px 0px;">
			        </form></div>
			     </td>
			     <td style="width:60px;">
			     <%if (session.getAttribute("selectUsers")!=null){ %>
			     <a href="adminUserListServlet"><div class="input"><button type="button" class="button button-rounded button-tiny" 
				style="width: 50px;margin-top:-20px;margin-left:-18px;">返回</button></div></a>
			     <%} 
			     ArrayList<User> users =(ArrayList<User>)session.getAttribute("users");
			
				String s= request.getParameter("page");
				int thispage= (s==null)?1:Integer.parseInt(s);
				int lastpage= (users.size()%20==0)?users.size()/20:users.size()/20+1;
			     %>
			     </td>
			      <td>		      
			      <form action="insertUser.jsp?thispage=<%=thispage %>" method="post">
				<input type="submit" value="添加用户" class="button button-rounded button-tiny" 
				style="width: 80px;margin-top:0px;">
					</form>
					</td>
			    </tr>
			  </tbody>
			</table> 
		</div>
		
		<form action="deleteGroupUsersServlet" method="post">
		<table class="table table-bordered table-condensed table-striped table-primary table-vertical-center checkboxs">
			<thead>
				<tr>
					<th style="width: 1%;" class="uniformjs"><input type="checkbox" /></th>
					<th class="center" style="width: 40%;">用户名</th>
					<th class="center" style="width: 35%;">密码</th>			
					<th class="center" >操作</th>
				</tr>
			</thead>
			<tbody>
			<%
			for (int i=(thispage-1)*20;i<thispage*20;i++){
				
				if (i>=users.size()){
					break;
				}
				User u= users.get(i);
			 %>
				<tr class="selectable">
					<td class="center uniformjs"><input type="checkbox" name="boxes" value=<%=u.getUserName()%> /></td>
					<td class="center"><%=u.getUserName() %></td>
					<td class="center"><%=u.getPassword() %></td>
					
					<td class="center">
						<a href="editUserList.jsp?editpage=<%=thispage %>&userName=<%=u.getUserName()%>" 
						class="btn-action glyphicons pencil btn-success" title="编辑"><i></i></a>
						<a href="deleteUserServlet?userName=<%=u.getUserName()%>" 
						class="btn-action glyphicons remove_2 btn-danger" title="删除"><i></i></a>
					</td>
				</tr>
				<%} %>				
		  </tbody>
		</table></form>
		<div class="separator top form-inline small">
			<div class="pull-left checkboxs_actions hide">
			
				<input type="submit" value="批量删除" class="button button-tiny" 
				style="width: 80px;border-radius: 4px;color: #666;background-color:#F0F0F0;">
			
			</div>
			<div class="pagination pagination-small pull-right" style="margin: 0;">
				<ul>
				<%if (thispage==1){ %>
					<li class="diabled"><a>&laquo;</a></li>
				<%}else{ %>
					<li ><a href="adminUserList.jsp?page=<%=thispage-1%>">&laquo;</a></li>
				<%} %> <!--  -->
				<%if (thispage==1&&lastpage==1){ %>
					<li class="active"><a><%=thispage %></a></li>
					<li class="diabled"><a>&raquo;</a></li>
				<%}else if (thispage+1==lastpage){ %>
					<li class="disabled"><a>......</a></li>
					<li class="active"><a><%=thispage %></a></li>
					<li ><a href="adminUserList.jsp?page=<%=thispage+1%>"><%=thispage+1 %></a></li>
					<li><a href="adminUserList.jsp?page=<%=thispage+1%>">&raquo;</a></li>
				<%}else if (thispage==lastpage){ %>
					<li ><a href="adminUserList.jsp?page=1">1</a></li>
					<li class="disabled"><a>......</a></li>
					<li ><a href="adminUserList.jsp?page=<%=thispage-1%>"><%=thispage-1 %></a></li>
					<li class="active"><a><%=thispage%></a></li>
					<li class="diabled"><a>&raquo;</a></li>
				<%}else{ %>
					<li class="active"><a><%=thispage%></a></li>
					<li ><a href="adminUserList.jsp?page=<%=thispage+1%>"><%=thispage+1 %></a></li>
					<li class="disabled"><a>......</a></li>
					<li ><a href="adminUserList.jsp?page=<%=lastpage%>"><%=lastpage %></a></li>
					<li><a href="adminUserList.jsp?page=<%=thispage+1%>">&raquo;</a></li>
					<%} %>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="separator line" style="margin-bottom:30px;" ></div>
</div>
	
	<!-- JQueryUI v1.9.2 -->
	<script src="theme/scripts/jquery-ui-1.9.2.custom/js/jquery-ui-1.9.2.custom.min.js"></script>
	
	<!-- JQueryUI Touch Punch -->
	<!-- small hack that enables the use of touch events on sites using the jQuery UI user interface library -->
	<script src="theme/scripts/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	
	<!-- MiniColors -->
	<script src="theme/scripts/jquery-miniColors/jquery.miniColors.js"></script>
	
	<!-- Themer -->
	<script>
	var themerPrimaryColor = '#71c39a';
	</script>
	<script src="theme/scripts/jquery.cookie.js"></script>
	<script src="theme/scripts/themer.js"></script>
	
	
	
	<!-- Resize Script -->
	<script src="theme/scripts/jquery.ba-resize.js"></script>
	
	<!-- Uniform -->
	<script src="theme/scripts/pixelmatrix-uniform/jquery.uniform.min.js"></script>
	
	<!-- Bootstrap Script -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap Extended -->
	<script src="bootstrap/extend/bootstrap-select/bootstrap-select.js"></script>
	<script src="bootstrap/extend/bootstrap-toggle-buttons/static/js/jquery.toggle.buttons.js"></script>
	<script src="bootstrap/extend/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"></script>
	<script src="bootstrap/extend/jasny-bootstrap/js/jasny-bootstrap.min.js" type="text/javascript"></script>
	<script src="bootstrap/extend/jasny-bootstrap/js/bootstrap-fileupload.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootbox.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootstrap-wysihtml5/js/wysihtml5-0.3.0_rc2.min.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootstrap-wysihtml5/js/bootstrap-wysihtml5-0.0.2.js" type="text/javascript"></script>
	
	<!-- Custom Onload Script -->
	<script src="theme/scripts/load.js"></script>
  </body>
</html>
