<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="javabean.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理-文档管理</title>
    <!-- Bootstrap -->
	<link href="bootstrap/css/button.css" rel="stylesheet" />
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="bootstrap/css/semantic.min.css" rel="stylesheet" />
		
	<!-- JQuery v1.8.2 -->
	<script src="theme/scripts/jquery-1.8.2.min.js"></script>
		
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
	
	var um=document.getElementById("um");
	var cat=document.getElementById("cat");
	var type=document.getElementById("type");
	var name = document.getElementById("search");			
	if(um.value==''&&cat.value==''&&type==''&&name.value==''){
		return false;
	}
}

var strRoot;
var varpath = decodeURI(window.location.pathname);  //url地址
var varhost=window.location.host;  //服务器地址
if (varhost=='')  
{
	//本机地址	
	strRoot = varpath.substring(1,varpath.lastIndexOf('/')+1);//取得打开、保存路径 
	if (strRoot =='')strRoot = varpath.substring(1,varpath.lastIndexOf('\\')+1);
	
}else
{
	//网络地址
	varpro=window.location.protocol;   //协议，http:
	strRoot= varpro + "//" + varhost + "/"+ "openword/";
	//strRoot= varpro + "//" + varhost + "/" + varpath.substring(1,varpath.lastIndexOf('/')+1);
	if (strRoot =='')strRoot = varpath.substring(1,varpath.lastIndexOf('\\')+1);
	 
	} 

function OpenFile(type,filename){

	//var filename= encodeURIComponent(filename0);
	
	if (type.match("ppt")){
		//var strPath='ppt.jsp?'+filename;
		var strPath='pptAdmin.jsp?'+filename;
		ShowPage(strRoot,strPath);
	}
	else if (type.match("word")){
		var strPath='wordAdmin.jsp?'+filename; 
		ShowPage(strRoot,strPath);
	}
	else if (type.match("pdf")){
	
		var pre = "WebOffice://|Officectrl|";//智能窗打开的固定参数
		var path='pdfAdmin.jsp?'+filename; 
		strSmartUrl = pre + strRoot + path;
		//location.href=encodeURI(strSmartUrl);
		location.href=strSmartUrl;
	}
	else if(type.match("excel")){
	
		var strPath='excelAdmin.jsp?'+filename; 
		ShowPage(strRoot,strPath);
	}
}

function ShowPage(root,path)
{ 
	var pre = "WebOffice://|Officectrl|";//智能窗打开的固定参数
	var v=getBrowser();	
	if(v==1){//当浏览器返回值为1时定义为使用智能窗方式打开网址
		strUrl = pre + root + path;
		//window.open(encodeURI(strUrl),'_self');
		window.open(strUrl,'_self');
	}
	else
	{ //当浏览器返回值1以外的数据时采用传统方式打开网址
		strUrl = root + path;
		//window.open(encodeURI(strUrl),'_blank');
		window.open(strUrl,'_blank');
	}	 
}

function getBrowser(){	
    var Sys = {};
    var ua = navigator.userAgent.toLowerCase();
    var s;
	var ver;
    (s = ua.match(/edge\/([\d.]+)/)) ? Sys.edge = s[1] :
    (s = ua.match(/rv:([\d.]+)\) like gecko/)) ? Sys.ie = s[1] :
    (s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] :
    (s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] :
    (s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] :
    (s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] :
    (s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;
	if (Sys.edge) return 1;
	if (Sys.ie) return 0;
    if (Sys.firefox) return 1;
    if (Sys.chrome){ ver = Sys.chrome;ver.toLowerCase();var arr = ver.split('.');if(parseInt(arr[0])>43){return 1;}else{return 0;}}
    if (Sys.opera) return 1;
    if (Sys.safari) return 1;
	return 1;
}

</script>
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63264",secure:"63271"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
 <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-0" data-genuitec-path="/FileManagementAdmin/WebRoot/adminFileList.jsp">

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
String errorInfo = (String)session.getAttribute("selectFileError");         // 获取错误属性
if(errorInfo != null) {
%>
<script type="text/javascript" language="javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-0" data-genuitec-path="/FileManagementAdmin/WebRoot/adminFileList.jsp">
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
					<li >
						<a href="homepageAdmin.jsp" class="menuToggle">首页</a>
					</li>
					<li class="active">
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


 
    <div id="content" class="one">	
<div class="separator line"></div>

<div class="filter-bar margin-bottom-none">
	<form action="selectFileServlet" method="post" onsubmit="return check(this)">
		<div class="lbl glyphicons cogwheel"><i></i>选择</div>
		<div>
			<label>用户名:</label>
			<select name="um" id="um" style="width: 80px;margin-top:3px;">
				<option value="">请选择</option>
			<% ArrayList<String> l1= (ArrayList<String>)session.getAttribute("um");
				for (String s: l1){
			 %>
				<option value="<%=s %>"><%=s %></option>
			<%} %>
			</select>
		</div>
		<div>
			<label>内容分类:</label>
			<select name="cat" id="cat" style="width: 80px;margin-top:3px;">
				<option value="">请选择</option>
			<% ArrayList<String> l2= (ArrayList<String>)session.getAttribute("cat");
				for (String s: l2){
			 %>
				<option value="<%=s %>"><%=s %></option>
			<%} %>
			</select>
		</div>
		<div>
			<label>文档类型:</label>
			<select name="type" id="type" style="width: 80px;margin-top:3px;">
				<option value="">请选择</option>
				<option value="xl">excel</option>
				<option value="ppt">ppt</option>
				<option value="pdf">pdf</option>
				<option value="txt">txt</option>
				<option value="doc">word</option>		
			</select>
		</div>
		<div>
			
			<div>
				<input type="text" name="search" id="search"
				style="width: 140px;height:25px;margin-left:20px;font-size:10px;" 
				placeholder="输入用户名或文档名" />
			</div>
		</div>
		<div>
			<div >
				<input type="submit" style="border:0px;padding:0px;height:25px;ine-height:25px;
				background:#bbbbbb;color:#ffffff;border-radius:4px;width: 50px;font-size:14px;margin-top:1px;"
				 value="搜索" />
			</div>
		</div>
		<% 
		String selected =(String)session.getAttribute("selectFile");
		if (selected!=null){
		%>
		<div>
			<div >
				<a href="adminFileListServlet"><input type="button" style="border:0px;padding:0px;height:25px;ine-height:25px;
				background:#bbbbbb;color:#ffffff;border-radius:4px;width: 50px;font-size:14px;margin-top:1px;margin-left:15px;"
				 value="返回" /></a>
			</div>
		</div>
		<% }%>
	</form>
	
	<div class="dropdown" style="float:right;margin-right:30px;">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    排序 <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" style="min-width:100px">
    <li class="sort-bg"><a href="sortFileServlet?flag=1&status=1">按重要程度降序</a></li>
    <li class="sort-bg"><a href="sortFileServlet?flag=2&status=1">按重要程度升序</a></li>
    <li class="sort-bg"><a href="sortFileServlet?flag=3&status=1">默认排序</a></li>
  </ul>
</div>
	
</div>
<div class="separator line"></div>		
<div class="widget widget-4" style="margin-top: 0px;">
	<div class="widget-head" style="float: left;margin-top: 5;margin-left:10px;margin-bottom:40px;">
		<h4 class="heading" style="color:#5C5C5C;">文档列表</h4>
		
	</div>
	<div class="widget-body" style="padding: 0;">
		 <div class="pull-right" >
		</div>
		
		<form action="deleteGroupFilesServlet?flag=1" method="post">
		<table class="table table-bordered table-condensed table-striped table-primary table-vertical-center checkboxs">
			<thead>
				<tr>
					<th style="width: 1%;" class="uniformjs"><input type="checkbox" /></th>
					<th class="center" style="width: 25%;">文件名</th>
					<th class="center" style="width: 7%;">用户名</th>
					<th class="center" style="width: 8%;">内容分类</th>	
					<th class="center" style="width: 11%;">标签</th>
					<th class="center" style="width: 9%;">重要程度</th>	
					<th class="center" style="width: 5%;">公开</th>	
					<th class="center" style="width: 8%;">是否阅读</th>	
					<th class="center" style="width: 10%;">笔记</th>		
					<th class="center" >操作</th>
				</tr>
			</thead>
			<tbody>
			<% 
			ArrayList<FileInfo> files =(ArrayList<FileInfo>)session.getAttribute("files");		
			String s= request.getParameter("page");
			int thispage= (s==null)?1:Integer.parseInt(s);
			int lastpage=0;
			if (files.size()==0){
			lastpage=1;
			}else{
			lastpage= (files.size()%15==0)?files.size()/15:files.size()/15+1;
			}
			for (int i=(thispage-1)*15;i<thispage*15;i++){
				
				if (i>=files.size()){
					break;
				}
				//System.out.println(i);
				FileInfo u= files.get(i);
			
				String tag= u.getTag();
				if (tag==null){
					tag="";
				}
				String note= u.getNote();
				if (note==null){
					note="";
				}else if(note.length()>20){
					note= note.substring(0,20)+"...";
				}
			 %>
				<tr class="selectable">
					<td class="center uniformjs"><input type="checkbox" name="boxes" value="<%=u.getFileId()%>" /></td>
					<td class="center"><%=u.getTitle() %></td>
					<td class="center"><%=u.getUserName() %></td>
					<td class="center"><%=u.getCategory() %></td>
					<td class="center"><%=tag%></td>
				
				<td class="center">
				<%if(u.getImportance()==0){ 
				for(int j=0;j<5;j++){%>
					<img src="bootstrap/img/starky.png" style="width: 15px;height: 15px;">	
				<%}}else{
					for(int k=0;k<u.getImportance();k++){ %>		
					<img src="bootstrap/img/starsy.png" style="width: 15px;height: 15px;">
				<%} for (int j=0;j<5-u.getImportance();j++){ %>
					<img src="bootstrap/img/starky.png" style="width: 15px;height: 15px;">
				<%}} %>
				</td>
				
				<%if (u.isShare()){ %>
					<td class="center"><img src="bootstrap/img/check2.png" style="width: 20px;height: 20px;"></td>
				<%}else{ %>
					<td class="center"><img src="bootstrap/img/close2.png" style="width: 20px;height: 20px;"></i></td>
				<%} %>
				
				<%if (u.isRead()){ %>
					<td class="center"><img src="bootstrap/img/check2.png" style="width: 20px;height: 20px;"></td>
				<%}else{ %>
					<td class="center"><img src="bootstrap/img/close2.png" style="width: 20px;height: 20px;"></i></td>
				<%} %>
					
					<td class="center"><%=note%></td>
					
					<td class="center">
					<a href ="javascript:void(0);" onclick= "OpenFile('<%=u.getType() %>','<%=u.getRename()%>')" 
						title="预览" class="btn-action glyphicons eye_open btn-info"><i></i></a>
						<a href="UpdateFileAdminServlet?id=<%=u.getFileId()%>&from=upload" 
						class="btn-action glyphicons pencil btn-success" title="编辑"><i></i></a>
						<a href="deleteFileServlet?flag=1&fileId=<%=u.getFileId()%>" 
						class="btn-action glyphicons remove_2 btn-danger" title="删除"><i></i></a>
					</td>
				</tr>
				<%} %>				
		  </tbody>
		</table>
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
					<li ><a href="adminFileList.jsp?page=<%=thispage-1%>">&laquo;</a></li>
				<%} %> <!--  -->
				<%if (thispage==1&&lastpage==1){ %>
					<li class="active"><a><%=thispage %></a></li>
					<li class="diabled"><a>&raquo;</a></li>
				<%}else if (thispage+1==lastpage){ %>
					<li class="disabled"><a>......</a></li>
					<li class="active"><a><%=thispage %></a></li>
					<li ><a href="adminFileList.jsp?page=<%=thispage+1%>"><%=thispage+1 %></a></li>
					<li><a href="adminFileList.jsp?page=<%=thispage+1%>">&raquo;</a></li>
				<%}else if (thispage==lastpage){ %>
					<li ><a href="adminFileList.jsp?page=1">1</a></li>
					<li class="disabled"><a>......</a></li>
					<li ><a href="adminFileList.jsp?page=<%=thispage-1%>"><%=thispage-1 %></a></li>
					<li class="active"><a><%=thispage%></a></li>
					<li class="diabled"><a>&raquo;</a></li>
				<%}else{ %>
					<li class="active"><a><%=thispage%></a></li>
					<li ><a href="adminFileList.jsp?page=<%=thispage+1%>"><%=thispage+1 %></a></li>
					<li class="disabled"><a>......</a></li>
					<li ><a href="adminFileList.jsp?page=<%=lastpage%>"><%=lastpage %></a></li>
					<li><a href="adminFileList.jsp?page=<%=thispage+1%>">&raquo;</a></li>
					<%} %>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div></form>
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
