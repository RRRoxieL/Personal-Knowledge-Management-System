<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="javabean.*" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">

<head>
    <title>上传文件</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link href="semantic/dist/semantic.min.css" rel="stylesheet" />
    <link href="plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="plugins/pacejs/pace.css" rel="stylesheet" />


	
 <!-- 验证表单提交内容是否为空-->
 <script type="text/javascript">
       function validate(){
	        var file=document.getElementById("file").value;
	        var category=document.getElementById("category").value;
	        var share=document.getElementById("share").value;
	        if(file==''){
	            alert("请选择文件！");
	            file.focus();
	            return false;
	        }
	        if(category==''||category==null){
	            alert("请选择分类！");
	            category.focus();
	            return false;
	        }
	        if(share==''||share==null){
	            alert("请选择是否将文档公开！");
	            share.focus();
	            return false;
	        }
	        document.cookie=encodeURI("category="+category);
	        document.cookie=encodeURI("share="+share);
	        return true;
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
		var strPath='ppt.jsp?'+filename;
		ShowPage(strRoot,strPath);
	}
	else if (type.match("word")){
		var strPath='word.jsp?'+filename; 
		ShowPage(strRoot,strPath);
	}
	else if (type.match("pdf")){
	
		var pre = "WebOffice://|Officectrl|";//智能窗打开的固定参数
		var path='pdf.jsp?'+filename; 
		strSmartUrl = pre + strRoot + path;
		//location.href=encodeURI(strSmartUrl);
		location.href=strSmartUrl;
	}
	else if(type.match("excel")){
	
		var strPath='excel.jsp?'+filename; 
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

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-160" data-genuitec-path="/FileManagement22/WebRoot/upload.jsp">
<script language="JavaScript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-160" data-genuitec-path="/FileManagement22/WebRoot/upload.jsp"> 
if (window != top)

top.location.href = location.href; 

</script>

 <div id="contextWrap"">
        <!--sidebar-->
        
        <div class="ui sidebar vertical left menu overlay  borderless visible sidemenu inverted  grey" style="-webkit-transition-duration: 0.1s; transition-duration: 0.1s;" data-color="grey">
            <a class="item logo" href="index.html">
                <img src="img/logo.png" alt="stagblogo" /><img src="img/thumblogo.png" alt="stagblogo" class="displaynone" />
            </a>
            <div class="ui accordion inverted">

                <div class="title item">
                    <i class="ion-speedometer titleIcon icon"></i> 
					<i class="dropdown icon"></i>公开文档 
                </div>
                <div class="content">
                  <a class="item" href="/FileManagement/servlet/PopCategoryServlet?category=all">
                   热门类目
                </a>
				  <a class="item" href="/FileManagement/servlet/DynamicServlet?page=public">
                   热门标签
                </a>
                </div>

              <div class="title item">
                    <i class="ion-folder titleIcon icon"></i>

                    <i class="dropdown icon"></i>文档类型
              </div>
                <div class="content">
					
                    <a class="item" href="/FileManagement/servlet/TypeFilterServlet?type=word">
                    Word
                </a>

                    <a class="item" href="/FileManagement/servlet/TypeFilterServlet?type=ppt">
                    PowerPoint
                </a>
					 <a class="item" href="/FileManagement/servlet/TypeFilterServlet?type=excel">
                    Excel
                </a>

                    <a class="item" href="/FileManagement/servlet/TypeFilterServlet?type=pdf">
                    PDF
                </a>
                    <a class="item" href="/FileManagement/servlet/TypeFilterServlet?type=txt">
                    TXT
                </a>
                </div>
				
              <div class="title item">
                    <i class="ion-document titleIcon  icon"></i>

                    <i class="dropdown icon"></i> 内容类别
              </div>
                <div class="content">
                    <a class="item" href="/FileManagement/servlet/CategoryFilterServlet?category=class">
                   课程文档
                </a>
                    <a class="item" href="/FileManagement/servlet/CategoryFilterServlet?category=science">
                   科研文档
                </a>

                    <a class="item" href="/FileManagement/servlet/CategoryFilterServlet?category=work">
                   工作文档
                </a>
                    <a class="item" href="/FileManagement/servlet/CategoryFilterServlet?category=interest">
                    兴趣拓展
                </a>
                    <a class="item" href="/FileManagement/servlet/CategoryFilterServlet?category=others">
                    其他
                </a>
                   
                </div>



               <div class="title item">
                    <i class="ion-bookmark titleIcon icon"></i>
                    <i class="dropdown icon"></i> 标签类别
                  </div>
                    <div class="content">
                    <a class="item" href="/FileManagement/servlet/DynamicServlet?page=private">标签一览
                     </a>
                   
                </div>
             
               
            </div>
			
			 <div class="ui dropdown item displaynone scrolling">
                <span>公开文档</span>
                <i class="ion-cloud icon"></i>

                <div class="menu">
                    <div class="header">
                        公开文档
                    </div>
                    <div class="ui divider"></div>
                    <a class="item" href="popCategory2.jsp">
                   热门类目
					</a>
                    <a class="item"  href="/FileManagement/servlet/DynamicServlet?page=public">
                   热门标签
                    </a>
                </div>
            </div>
			
			 <div class="ui dropdown item displaynone scrolling">
                <span>文档类型</span>
                <i class="ion-folder icon"></i>
                <div class="menu">
                    <div class="header">
                        文档类型
                    </div>
                    <div class="ui divider"></div>
                    <a class="item" href="/FileManagement/servlet/TypeFilterServlet?type=word">
                    Word
                </a>
                    <a class="item" href="/FileManagement/servlet/TypeFilterServlet?type=ppt">
                   PowerPoint
                </a>
                  <a class="item" href="/FileManagement/servlet/TypeFilterServlet?type=excel">
                   Excel
                </a>
                    <a class="item" href="/FileManagement/servlet/TypeFilterServlet?type=pdf">
                   PDF
                </a>  
					<a class="item" href="/FileManagement/servlet/TypeFilterServlet?type=txt">
                   TXT
                </a>
					
                </div>
            </div>
			
			 <div class="ui dropdown item displaynone scrolling">
                <span>内容类别</span>
                <i class="ion-document icon"></i>
                <div class="menu">
                    <div class="header">
                        内容类别
                    </div>
                    <div class="ui divider"></div>
                    <a class="item" href="/FileManagement/servlet/CategoryFilterServlet?category=class">
                    课程文档
                </a>
                    <a class="item" href="/FileManagement/servlet/CategoryFilterServlet?category=science">
                    科研文档
                </a>
                    <a class="item" href="/FileManagement/servlet/CategoryFilterServlet?category=work">
                    工作文档
                </a>  
					<a class="item" href="/FileManagement/servlet/CategoryFilterServlet?category=interest">
                    兴趣拓展
                </a>
					<a class="item" href="/FileManagement/servlet/CategoryFilterServlet?category=other">
                    其他
                </a>
					
                </div>
            </div>

          <div class="ui dropdown item displaynone scrolling">
                <span>标签类别</span>
                <i class="ion-bookmark icon"></i>
                <div class="menu">
                    <div class="header">
                       标签类别
                    </div>
                     <div class="ui divider"></div>
                    <a class="item" href="/FileManagement/servlet/DynamicServlet?page=private">
                       标签一览
                    </a>
                
                </div>
            </div>
       
        </div>
        <!--sidebar-->
        <div class="ui right sidebar">
            <div class="ui pointing secondary two item tabular menu">
                <a class="item active" data-tab="first"><i class="black icon ion-chatbox-working icon"></i></a>

                <a class="item" data-tab="second"><i class="black icon ion-gear-a"></i></a>
            </div>
            <div class="ui tab active" data-tab="first">
                
                    <h4 class="ui header">Properties</h4>
				    <div class="ui divider"></div>
                   <div class="ui form fluid">
                    <div class="grouped fields">
                        <label>Connection Limited</label>
                        <div class="field">
                            <div class="ui slider checkbox">
                                <input type="radio" name="throughput" checked="checked">
                                <label>20 mbps max</label>
                            </div>
                        </div>
                        <div class="field">
                            <div class="ui slider checkbox">
                                <input type="radio" name="throughput">
                                <label>10mbps max</label>
                            </div>
                        </div>
                        <div class="field">
                            <div class="ui slider checkbox">
                                <input type="radio" name="throughput">
                                <label>5mbps max</label>
                            </div>
                        </div>
                        <div class="field">
                            <div class="ui slider checkbox checked">
                                <input type="radio" name="throughput">
                                <label>Unmetered</label>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="ui divider"></div>
               
            </div>

          <div class="ui tab" data-tab="second">
              

                <h4 class="ui header">工具栏配色</h4>
                <div class="ui basic segment">

                    <ul class="colorlist">
                        <li>
                            <a class="ui segment yellow inverted" data-addClass="inverted yellow">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment red inverted" data-addClass="inverted red">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment blue inverted" data-addClass="inverted blue">
                            </a>
						</li>
                        <li>
                            <a class="ui segment orange inverted" data-addClass="inverted orange">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment pink inverted" data-addClass="inverted pink">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment green inverted" data-addClass="inverted green">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment purple inverted" data-addClass="inverted purple">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment violet inverted" data-addClass="inverted violet">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment brown inverted" data-addClass="inverted brown">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment teal inverted" data-addClass="inverted teal">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment grey inverted" data-addClass="inverted grey">
                            </a>
                        </li>
                       
                    </ul>
                  </div>
              <h4 class="ui header">导航栏配色</h4>
                <div class="ui basic segment">

                    <ul class="sidecolor">
                        <li>
                            <a class="ui segment yellow inverted" data-addClass="inverted yellow">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment red inverted" data-addClass="inverted red">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment blue inverted" data-addClass="inverted blue">
                            </a>
                        </li>
                       
                        <li>
                            <a class="ui segment orange inverted" data-addClass="inverted orange">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment pink inverted" data-addClass="inverted pink">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment green inverted" data-addClass="inverted green">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment purple inverted" data-addClass="inverted purple">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment violet inverted" data-addClass="inverted violet">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment brown inverted" data-addClass="inverted brown">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment teal inverted" data-addClass="inverted teal">
                            </a>
                        </li>
                        <li>
                            <a class="ui segment grey inverted" data-addClass="inverted grey">
                            </a>
                        </li>
                       
                    </ul>
                </div>
            </div>
        </div>
        <div class="pusher">
            <!--navbar-->
            <div class="navslide navwrap">
                <div class="ui menu icon borderless grid" data-color="inverted white">
                    <a class="item labeled openbtn">
                        <i class="ion-navicon-round big icon"></i>
                    </a>
                    <a class="item labeled expandit" onclick="toggleFullScreen(document.body)">
                        <i class="ion-arrow-expand big icon"></i>
                    </a>
                     <form  method="post" action="servlet/SearchFileServlet" target="_blank" class="form" onsubmit="return check(this)" >
                    <div class="item ui colhidden">
                        <div class="ui icon input">
                            <input type="text" name="fileName1" placeholder="输入文件名..." style="height:100%">
                            <input type="hidden" name="fileName2">
                            <input type="hidden" name="fileName3">
                            <input type="submit" value="查找" style="width: 5px" align="center"></i>
                        </div>
                    </div>
                    </form>
                    <div class="right menu colhidden">
                    
                        
<div class="ui dropdown item">
           <i class=" ion-person big icon"></i>
            <div class="menu">
                            
                              <a class="item" href="servlet/ChangeAccountServlet">切换账户</a>
                              <a class="item" href="servlet/LogoutServlet">注销账户</a>
                            </div>
                        </div>
                        <a class="item labeled rightsidebar computer only">
                            <i class="ion-wrench large icon"></i>
                        </a>

                  </div>
                </div>
            </div>
            <!--navbar-->
			<script type="text/javascript">  
			   function loginSrc()
               {
                document.getElementById("frame").src="login.jsp";
                } 
			   
			   function signupSrc()
               {
                document.getElementById("frame").src="signup.jsp";
                } 
			 </script>
            <!--maincontent-->
         <div class="mainWrap navslide"  style="padding-left:40px;">
            <div class="ui equal width left aligned padded grid stackable">
                <!--Site Content-->
                <div class="row">
                    <div class="sixteen wide tablet sixteen wide computer column">
                        <div class="ui segments">
                            <div class="ui segment">
                                <h3 class="ui header">上传文件</h3>
                            </div>
							  <div class="ui segment fullheight" style="padding-left:40px;padding-right:40px;">
							
                            <form class="ui form segment"action="servlet/UploadHandleServlet" method="post" enctype="multipart/form-data" onsubmit="return validate(this)">
                                       
                                        <div class="ui hidden divider"></div>
										 <div class="field" style="height:60px">
                                                <label style="font-size:14px;">选择文件</label>
                                           <input type="file" name="file" id="file" multiple style="height:40px">
                                      </div><br/>
                                        <div class="two fields">
                                            <div class="field">
                                                <label style="font-size:14px;">内容分类<font color="red">*</font></label>
													<select name="category" id="category" class="ui dropdown fluid selection">
                                                    <option value="1">课程文档</option>
                                                    <option value="2">科研文档</option>
                                                    <option value="3">工作文档</option>
                                                    <option value="4">兴趣拓展</option>
                                                    <option value="5" selected>其他</option>
                                                </select>
                                            </div>
                                            <div class="field">
                                                <label style="font-size:14px;">是否公开<font color="red">*</font></label>
                                                <select name="share" id="share" class="ui dropdown fluid selection">
                                                    <option value="true" selected>公开</option>
                                                    <option value="false">个人</option>
                                                </select>
                                            </div>
                                        </div>
                                        <input type="submit" value="提交" class="ui grey submit button">
                                    </form><br/>
                                    <%  if(session.getAttribute("msgUpload")!=null){                              
                                        int msg=(Integer)session.getAttribute("msgUpload"); 
                                        if(msg==1){
                                        %><script>alert("文件类型不正确！");</script><%
                                        }
                                        else if(msg==2){
                                        %><script>alert("文件上传成功！");</script><%
                                        }
                                        else if(msg==3){
                                        %><script>alert("文件已存在！");</script><%
                                        }
                                        else if(msg==4){
                                        %><script>alert("删除成功！");</script><%
                                        }
                                        session.removeAttribute("msgUpload");
                                        }%>
                                     <% if(session.getAttribute("msgUpdate")!=null){                              
                                        int msg=(Integer)session.getAttribute("msgUpdate"); 
                                        if(msg==1){
                                        %><script>alert("修改成功！");</script><%
                                        }
                                        else{
                                        %><script>alert("修改失败，请重试！");</script><%
                                        }
                                        session.removeAttribute("msgUpdate");
                                        }%>
									<c:if test="${show == 1||param.show==1}">
									<table class="ui celled table tablet stackable">
			<thead>
				<tr>
					<th class="center" style="width: 20%;">文件名</th>
					<th class="center" style="width: 10%;">内容分类</th>
					<th class="center" style="width: 15%;">标签</th>
					<th class="center" style="width: 20%;">重要程度</th>
					<th class="center" style="width: 5%;">公开</th>
					<th class="center" style="width: 20%;">笔记</th>
					<th class="center" style="width: 10%;">操作</th>
				</tr>
			</thead>
			<% //翻页
			ArrayList<FileInfo> files =(ArrayList<FileInfo>)session.getAttribute("newFiles");
			
			String pagenum= request.getParameter("page");
			int thispage= (pagenum==null)?1:Integer.parseInt(pagenum);
			if(files!=null){
			int lastpage= (files.size()%7==0)?files.size()/7:files.size()/7+1;
			
			for (int i=(thispage-1)*7;i<thispage*7;i++){
				
				if (i>=files.size()){
					break;
				}
				//System.out.println(i);
				FileInfo file= files.get(i);
			
				String tag= file.getTag();
				if (tag==null){
					tag="";
				}
				String note=file.getNote();
				if (note==null){
					note="";
				}else if(note.length()>10){
					note= note.substring(0,10)+"...";
				}%>
                        <tr>
                          <td class="center"><%=file.getTitle() %></td>
                          <td class="center"><%=file.getCategory() %></td>
                          <td class="center"><%=tag%></td>
                          <td class="center"><div class="ui star dsbl rating disabled" data-rating="<%=file.getImportance()%>">
                          <i class="icon"></i>
                          <i class="icon"></i>
                          <i class="icon"></i>
                          <i class="icon"></i>
                          <i class="icon"></i>
                          
                          </div></td>
                          
                           <%if (file.isShare()){ %>
                          <td class="center"> <i class="check green icon"></i></td>
                          <%}else{ %>
                           <td class="center"> <i class="close red icon"></i></i></td>
                           <%} %>
                           
                          <td class="center"><%=note%></td>
                          <td class="center">
 <a href ="javascript:void(0);" onclick= "OpenFile('<%=file.getType() %>','<%=file.getRename()%>')" title="预览" ><i class="unhide icon"></i></a>
						   <a href="servlet/UpdateFileServlet?id=<%=file.getFileId()%>&from=upload" 
						     title="编辑"><i class="edit icon"></i></a>
						   <a href="servlet/UserDeleteFileServlet?fileId=<%=file.getFileId()%>&from=3" 
						     title="删除"><i class="remove circle icon"></i></a>
					     </td>
                        </tr>
                        <%} %>
                        
                        <% if((lastpage!=1)&&(lastpage!=0)){
                                if(thispage==1){%>
                                </tbody>
                                      <tfoot class="hiddenui">
                                        <tr>
                                        <th colspan="3">
                                        <div class="ui right floated pagination menu">
                                        <a class="icon item" href="upload.jsp?page=<%=thispage+1%>&show=1">
                                             <i class="right chevron icon"></i>
                                        </a>
                                        <%}
                                 else if((thispage!=1)&&(thispage!=lastpage)){%>
                                 </tbody>
                                         <tfoot class="hiddenui">
                                        <tr>
                                        <th colspan="3">
                                        <div class="ui right floated pagination menu">
                                         <a class="icon item" href="upload.jsp?page=<%=thispage-1%>&show=1">
                                             <i class="left chevron icon"></i>
                                        </a>
                                         <a class="icon item" href="upload.jsp?page=<%=thispage+1%>&show=1">
                                             <i class="right chevron icon"></i>
                                        </a>
                                        
                                        <%}
                                 else if(thispage==lastpage) {%>
                                        </tbody>
                                        <tfoot class="hiddenui">
                                        <tr>
                                        <th colspan="3">
                                        <div class="ui right floated pagination menu">
                                        <a class="icon item" href="popTag1.jsp?page=<%=thispage-1%>&show=1">
                                             <i class="left chevron icon"></i>
                                        </a>
                                       
                                        <%} %>
                                        </div>
                                        </th>
                                        </tr>
                                        </tfoot>
                                      <%} }
                                      else{%>
                                      </tbody>
                                      <% }%>
		</table>
		
        </c:if>
       <%
		 session.setAttribute("show",0);
		%>
       </div>
                               
                                </div>
                            </div>
							</div>
                            </div>
                        </div>
                    </div>
                </div>

    
    <!--jquery-->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!--jquery-->
    <script src="plugins/Filterizr/dist/jquery.filterizr.min.js"></script>
    <!--semantic-->
    <script src="semantic/dist/semantic.min.js"></script>
    <!--semantic-->
<script src="plugins/cookie/js.cookie.js"></script>
    <script src="plugins/nicescrool/jquery.nicescroll.min.js"></script>

    <script data-pace-options='{ "ajax": false }' src="plugins/pacejs/pace.js"></script>

    <script src="js/main.js"></script>
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
