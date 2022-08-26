<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="javabean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUhomepageAdmin.jspBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>后台管理-文档管理=文档编辑</title>
	
	<!-- Meta -->
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	
	<!-- Bootstrap -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	
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
	<link rel="stylesheet" href="theme/css/style.min.css?1361377732" />
	<link rel="stylesheet" href="css/jquery.tagsinput-revisited.css" />

	<script src="theme/scripts/less-1.3.3.min.js"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script>
        window.onload=function(){  //加载窗口时就调用该方法
            var imgs=document.getElementsByName("star");
            for(var i=0;i<imgs.length;i++){
                imgs[i].setAttribute("score",i+1);//设置分数
                imgs[i].onclick=function(){   //点击时调用方法
                    var srcEl=event.srcElement;//通过event来获取原元素
                    var score=srcEl.getAttribute("score");//获取分数
                    for(var j=0;j<score;j++){
                        imgs[j].src="bootstrap/img/starsy.png";
                    }
                    for(var j=score;j<imgs.length;j++){
                        imgs[j].src="bootstrap/img/starky.png";
                    }
                    document.cookie=encodeURI("importance="+score);
                }
            }
        }
       
        
        function validate(){
	        var category=document.getElementById("category").value;
	        var share=document.getElementById("share").value;
	        document.cookie=encodeURI("category="+category);
	        document.cookie=encodeURI("share="+share);
	        return true;
	    }
    </script>

<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63264",secure:"63271"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-153" data-genuitec-path="/FileManagementAdmin/WebRoot/updateFileAdmin.jsp">

<%
	String adminName= "";
	int flag=0;
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
%>

	
<div class="navbar main" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-153" data-genuitec-path="/FileManagementAdmin/WebRoot/updateFileAdmin.jsp">

	<div class="container">
		<div class="row">
			<div class="span12 relativeWrap">
			
				<button type="button" class="btn btn-navbar visible-phone">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
	
				<ul id="menu" class="hidden-phone">
					<li class="active">
						<a href="javascript:void(0);" class="menuToggle">首页</a>
					</li>
					<li>
						<a href="adminFileListServlet" class="menuToggle">文档管理</a>
					</li>
					<li >
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
	
	<!-- Start Content -->
	<div class="container-fluid fixed">
		
				
		<div id="content"> <!-- <h3 class="glyphicons user"><i></i> My Account</h3> -->

<div class="widget widget-2 widget-tabs widget-tabs-2 tabs-right border-bottom-none">
	<div class="widget-head">
		<ul>
			<li class="active"><a class="glyphicons settings" href="#account-settings" data-toggle="tab"><i></i>文档信息</a></li>
			<!--<li class="active"><a class="glyphicons user" href="#account-details" data-toggle="tab"><i></i>Account details</a></li>-->
		</ul>
	</div>
</div>
	
<form class="form-horizontal" name="form1" id="form1" method="post" onsubmit="return validate(this)"
action="UpdateFileAdminServlet?id=${updatefile.fileId}&from=update">
  <input type="hidden" name="cate" id="cate" value="${updatefile.category}"/>
  <input type="hidden" name="sh" id="sh" value="${updatefile.share}"/>
<div class="tab-content" style="padding: 0;">
	<div div class="tab-pane active" id="account-settings">
	
		<div class="row-fluid">
			<div class="span6">
				<div class="control-group">
					<label class="control-label">文档名</label>
					<div class="controls">
						<input name="title" type="text"  value="${updatefile.title}" class="span10" style="width:300px" />
						<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" 
						data-toggle="tooltip" data-placement="top" data-original-title="First name is mandatory"></span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">内容分类</label>
					
					<div class="controls" >
					  <select class="span12" name="category" id="category">
							<option value="1">课程文档</option>
							<option value="2">科研文档</option>
							<option value="3">工作文档</option>
							<option value="4">兴趣拓展</option>
							<option value="5">其他</option>
						</select>
					</div>
				</div>
			</div>
			<div class="span6" style="margin-top: 70px;">
				<div class="control-group">
					<label class="control-label">是否公开</label>
					<div class="controls" >
						<select name="share" id="share" class="ui dropdown fluid selection">
							<option value="true">公开</option>
							<option value="false">个人</option>
					  </select>
					</div>
				</div>
			</div>
		</div>
		<hr class="separator bottom" />
		
			<div class="row-fluid">
			<div class="span6">
				<div class="control-group">
					<label class="control-label">重要程度</label>
					<div class="controls" >
   <c:choose>
         <c:when test="${updatefile.importance>0}">
                <%
                  FileInfo f=(FileInfo)session.getAttribute("updatefile");
                  int imp=f.getImportance();
                  int i;
                  for(i=0;i<imp;i++){
                      %>
                      <img name="star"src="bootstrap/img/starsy.png"><%
                  }
                  for(int j=i;j<5;j++){
                  %>
                      <img name="star"src="bootstrap/img/starky.png"><%
                  }
                %>
                </c:when>
                <c:otherwise>
                <img name="star" src="bootstrap/img/starky.png">
                <img name="star"src="bootstrap/img/starky.png">
                <img name="star"src="bootstrap/img/starky.png">
                <img name="star"src="bootstrap/img/starky.png">
                <img name="star"src="bootstrap/img/starky.png">
        </c:otherwise>
    </c:choose>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">标签</label>
					<div class="controls">
						<div class="jq22-content" style="width:700px;">
				<input id="tag" name="tag" type="text" value="${updatefile.tag}" >
						</div>
					</div>
				</div>
			</div>
			
		</div>
				
		<div class="control-group row-fluid">
			<label class="control-label">用户笔记</label>
			<div class="controls">
				<textarea  name="note" id="mustHaveId" class=" span12" rows="3" style="width:700px;">${updatefile.note}</textarea>
			</div>
		</div>
		<div class="form-actions" style="margin: 0;">
			<i></i><input type="submit" class="btn btn-icon btn-primary glyphicons circle_ok" value="提交">
			<a href="adminFileListServlet">
			<button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>返回</button>
			</a>
		</div>
	</div>
</div>
</form></div></div>	
 <%  if(session.getAttribute("msgUpdate")!=null){                              
        int msg=(Integer)session.getAttribute("msgUpdate"); 
        if(msg==1){
        %><script>alert("修改成功！");</script><%
        }
        else{
        %><script>alert("修改失败，请重试！");</script><%
        }
        session.removeAttribute("msgUpdate");
        }%>
        
<script type="text/javascript">
        function jsSelectItemByValue(objSelect,objItemText){
            for(var i=0;i<objSelect.options.length;i++){
                if(objSelect.options[i].value==objItemText){
                    objSelect.options[i].selected=true;
                    break;
                }
            }
        };
        function jsSelectItemByText(objSelect,objItemText){
            for(var i=0;i<objSelect.options.length;i++){
                if(objSelect.options[i].text==objItemText){
                    objSelect.options[i].selected=true;
                    break;
                }
            }
        };
        
        var s=document.getElementById("sh").value;
        jsSelectItemByValue(document.forms['form1'].share,s);   
        
        var c=document.getElementById("cate").value;
        jsSelectItemByText(document.forms['form1'].category,c);
    </script>
	
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
	
	<script>
	//Load the Visualization API and the piechart package.
	google.load('visualization', '1.0', {'packages':['table', 'corechart']});
	
	// Set a callback to run when the Google Visualization API is loaded.
	google.setOnLoadCallback(charts.traffic_sources_dataTables.init);
	</script>

<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> 
<script src="http://www.jq22.com/jquery/jquery-ui-1.11.0.js"></script> 
<script src="js/jquery.tagsinput-revisited.js"></script> 
<script type="text/javascript">
		$(function() {
			$('#tag').tagsInput({
				'delimiter': ',' 
			});		
		});
	</script>

</body>
</html>
