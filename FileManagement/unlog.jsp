<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	Cookie[] cookies = request.getCookies();
	if (cookies!=null){
		for (Cookie c :cookies){
		
		System.out.println(c.getName()+":"+c.getValue());
			if (c.getName().equals("user")){
			String id= c.getValue().split("-")[0];
		    String rememberMe= c.getValue().split("-")[1];
		    System.out.println(rememberMe);
		    if (rememberMe.equals("yes")){
		    
	    		response.sendRedirect("log.jsp");
	   		}
			}
		
		}
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">

<head>
    <title>未登陆页面</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link href="<%=basePath%>semantic/dist/semantic.min.css" rel="stylesheet" />
    <link href="<%=basePath%>plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="<%=basePath%>css/main.css" rel="stylesheet" />
    <link href="<%=basePath%>plugins/pacejs/pace.css" rel="stylesheet" />

<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63264",secure:"63271"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-159" data-genuitec-path="/FileManagement22/WebRoot/unlog.jsp">


 <div id="contextWrap" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-159" data-genuitec-path="/FileManagement22/WebRoot/unlog.jsp">
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
					
                    <a class="item" onclick="loginSrc()">
                    Word
                </a>

                    <a class="item" onclick="loginSrc()">
                    PowerPoint
                </a>
					 <a class="item" onclick="loginSrc()">
                    Excel
                </a>

                    <a class="item" onclick="loginSrc()">
                    PDF
                </a>
                    <a class="item" onclick="loginSrc()">
                    TXT
                </a>
                </div>
				
              <div class="title item">
                    <i class="ion-document titleIcon  icon"></i>

                    <i class="dropdown icon"></i> 内容类别
              </div>
                <div class="content">
                    <a class="item" onclick="loginSrc()">
                   课程文档
                </a>
                    <a class="item" onclick="loginSrc()">
                   科研文档
                </a>

                    <a class="item" onclick="loginSrc()">
                   工作文档
                </a>
                    <a class="item" onclick="loginSrc()">
                    兴趣拓展
                </a>
                    <a class="item" onclick="loginSrc()">
                    其他
                </a>
                   
                </div>



                <div class="title item" >
                    <i class="ion-bookmark titleIcon icon"></i>
                    <i class="dropdown icon"></i> 标签类别
                  </div>
                    <div class="content">
                    <a class="item" onclick="loginSrc()">标签一览
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
                    <a class="item" onclick="loginSrc()">
                    Word
                </a>
                    <a class="item" onclick="loginSrc()">
                   PowerPoint
                </a>
                  <a class="item" onclick="loginSrc()">
                   Excel
                </a>
                    <a class="item" onclick="loginSrc()">
                   PDF
                </a>  
					<a class="item" onclick="loginSrc()">
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
                    <a class="item" onclick="loginSrc()">
                    课程文档
                </a>
                    <a class="item" onclick="loginSrc()">
                    科研文档
                </a>
                    <a class="item" onclick="loginSrc()">
                    工作文档
                </a>  
					<a class="item" onclick="loginSrc()">
                    兴趣拓展
                </a>
					<a class="item" onclick="loginSrc()">
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
                    <a class="item" onclick="loginSrc()">
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
                            <input type="text" name="fileName2" placeholder="输入文件名...">
                            <input type="hidden" name="fileName1">
                            <input type="hidden" name="fileName3">
                            <input type="submit" value="查找" style="width: 5px" align="center"></i>
                        </div>
                    </div>
                    </form>
                    <div class="right menu colhidden">
                      
<div class="ui dropdown item">
           <i class=" ion-person big icon"></i>
            <div class="menu">
                              <a class="item" onclick="loginSrc()">登录</a>
                              <a class="item" onclick="signupSrc()">注册</a>
                             
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
                                <h3 class="ui header"></h3>
                            </div>
							  <div class="ui segment fullheight">
							<iframe frameborder="no" id="frame" name="frame" src="index.jsp" style="width:100%;height: 710px"></iframe>
                            <%

String changeInfo = (String)session.getAttribute("change");   

if(changeInfo=="login") { 
%>
<script type="text/javascript" language="javascript">

 document.getElementById("frame").src="login.jsp";
                                      
</script>
<%}
else if(changeInfo=="signup"){  %>
<script type="text/javascript" language="javascript">

 document.getElementById("frame").src="signup.jsp";
                                      
</script>
<% 
}
session.removeAttribute("change");

 %>
							</div>
                            </div>
                        </div>
                    </div>
                </div>
        <!--maincontent-->
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
			
   

</body>

</html>
