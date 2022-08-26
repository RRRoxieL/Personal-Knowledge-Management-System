<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="javabean.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">

<head>
    <title>热门文档类别</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link href="<%=basePath%>semantic/dist/semantic.min.css" rel="stylesheet" />
    <link href="<%=basePath%>plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="<%=basePath%>css/main.css" rel="stylesheet" />
    <link href="<%=basePath%>plugins/pacejs/pace.css" rel="stylesheet" />

<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63264",secure:"63271"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-45" data-genuitec-path="/FileManagement22/WebRoot/popCategory2.jsp">
<script language="JavaScript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-45" data-genuitec-path="/FileManagement22/WebRoot/popCategory2.jsp"> 
if (window != top){

top.location.href = location.href; 
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
 <div id="contextWrap">
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
                    <a class="item" href="/FileManagement/servlet/PopCategoryServlet?category=all">
                   热门类目
					</a>
                    <a class="item" href="/FileManagement/servlet/DynamicServlet?page=public">
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
                            <input type="text" name="fileName1" placeholder="输入文件名...">
                            <input type="hidden" name="fileName2">
                            <input type="hidden" name="fileName3">
                            <input type="submit" value="查找" style="width: 5px" align="center"></i>
                        </div>
                    </div>
                    </form>
                    <div class="right menu colhidden">
                    
                       <div class="ui dropdown item labeled icon" onclick="window.location='/FileManagement/upload.jsp'" >
                           <div >文件上传 &ensp; </div> <i class="large upload icon"></i>
                            
                            
                     </div>
                     
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
           <div class="mainWrap navslide">
            <div class="ui equal width left aligned padded grid stackable">
                <!--Site Content-->
                <div class="row">
                    <div class="sixteen wide tablet sixteen wide computer column">
                        <div class="ui segments">
                            <div class="ui segment">
                                <h3 class="ui header">公开文档</h3>
                            </div>
                            <div class="ui segment fullheight">
                                <div class="yellow ui buttons">
                                    <button class="ui button" onclick="window.location.href ='servlet/PopCategoryServlet?category=all'">全部</button>
									<button class="ui button" onclick="window.location.href ='servlet/PopCategoryServlet?category=class'">课程文档</button>
                                    <button class="ui button" onclick="window.location.href ='servlet/PopCategoryServlet?category=science'">科研文档</button>
                                    <button class="ui button" onclick="window.location.href ='servlet/PopCategoryServlet?category=work'">工作文档</button>
                                    <button class="ui button" onclick="window.location.href ='servlet/PopCategoryServlet?category=interest'">兴趣拓展</button>
                                    <button class="ui button" onclick="window.location.href ='servlet/PopCategoryServlet?category=other'">其他</button>	
                                </div>

                             
                              
                                <div class="ui buttons">

                                    <button class="blue ui button" onclick="window.location.href ='servlet/FileOrderServlet?order=asc&from=popcategory'" >按重要程度升序</button>
                                    <button class="red ui button" onclick="window.location.href ='servlet/FileOrderServlet?order=desc&from=popcategory'" >按重要程度降序</button>
                                </div>

                                <div class="ui divider"></div>
						 
                                <div class="row">           
                                <div class="sixteen wide mobile sixteen wide tablet sixteen wide computer column">
                                    <div class="ui segments">
                                        <div class="ui segment">
                                            <h5 class="ui header">
                                                我的文档
                                            </h5>
                                        </div>
                                        <%  if(session.getAttribute("msgUpload")!=null){                              
                                        int msg=(Integer)session.getAttribute("msgUpload"); 
                                        if(msg==4){
                                        %> <script>alert("删除成功！");</script><%
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
                                             <div class="ui segment">
                                            <table class="ui celled table tablet stackable">
                                                <thead>
                                                    <tr>
                                                        <th>文件名</th>
                                                        <th>内容分类</th>
                                                        <th>标签</th>
                                                        <th>阅读状态</th>
                                                        <th>重要程度</th>
                                                        <th>公开状态</th>
                                                        <th>用户笔记</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
           <% //翻页
			ArrayList<FileInfo> files =(ArrayList<FileInfo>)session.getAttribute("files");
			
			String pagenum= request.getParameter("page");
			int thispage= (pagenum==null)?1:Integer.parseInt(pagenum);
			if(files!=null){
			int lastpage= (files.size()%10==0)?files.size()/10:files.size()/10+1;
			System.out.println(pagenum+";"+thispage+";"+lastpage);
			
			for (int i=(thispage-1)*10;i<thispage*10;i++){
				
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
                          <td><%=file.getTitle() %></td>
                          <td><%=file.getCategory() %></td>
                          <td><%=tag%></td>
                          
                           <%if (file.isRead()){ %>
                          <td> <i class="check green icon"></i></td>
                          <%}else{ %>
                           <td> <i class="close red icon"></i></i></td>
                           <%} %>
                          
                          <td><div class="ui star dsbl rating disabled" data-rating="<%=file.getImportance()%>">
                          <i class="icon"></i>
                          <i class="icon"></i>
                          <i class="icon"></i>
                          <i class="icon"></i>
                          <i class="icon"></i>
                          
                          </div></td>
                          
                          <%if (file.isShare()){ %>
                          <td> <i class="check green icon"></i></td>
                          <%}else{ %>
                           <td> <i class="close red icon"></i></i></td>
                           <%} %>
                           
                          <td><%=note%></td>
                        </tr>
                        <%} %>
                        
                        <% if((lastpage!=1)&&(lastpage!=0)){
                                if(thispage==1){%>
                                </tbody>
                                      <tfoot class="hiddenui">
                                        <tr>
                                        <th colspan="8">
                                        <div class="ui right floated pagination menu">
                                        <a class="icon item" href="popCategory2.jsp?page=<%=thispage+1%>">
                                             <i class="right chevron icon"></i>
                                        </a>
                                        <%}
                                 else if((thispage!=1)&&(thispage!=lastpage)){%>
                                 </tbody>
                                         <tfoot class="hiddenui">
                                        <tr>
                                        <th colspan="8">
                                        <div class="ui right floated pagination menu">
                                         <a class="icon item" href="popCategory2.jsp?page=<%=thispage-1%>">
                                             <i class="left chevron icon"></i>
                                        </a>
                                         <a class="icon item" href="popCategory2.jsp?page=<%=thispage+1%>">
                                             <i class="right chevron icon"></i>
                                        </a>
                                        
                                        <%}
                                 else if(thispage==lastpage) {%>
                                 </tbody>
                                        <tfoot class="hiddenui">
                                        <tr>
                                        <th colspan="8">
                                        <div class="ui right floated pagination menu">
                                        <a class="icon item" href="popCategory2.jsp?page=<%=thispage-1%>">
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
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                  
                                        
								  

                                   
									
                             </div>
								
                            </div>
                        </div>
                    </div>
               </div>
               </div>
               
        <!--maincontent-->
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
			
   

</body>

</html>
