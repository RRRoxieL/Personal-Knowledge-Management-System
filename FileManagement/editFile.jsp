<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="javabean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">

<head>
    <title>编辑文件信息</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link href="<%=basePath%>semantic/dist/semantic.min.css" rel="stylesheet" />
    <link href="<%=basePath%>plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="<%=basePath%>css/main.css" rel="stylesheet" />
    <link href="<%=basePath%>plugins/pacejs/pace.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/jquery-ui-1.11.0.css">
	<link rel="stylesheet" href="css/jquery.tagsinput-revisited.css" />
    <script>
        window.onload=function(){  //加载窗口时就调用该方法
            var imgs=document.getElementsByName("star");
            for(var i=0;i<imgs.length;i++){
                imgs[i].setAttribute("score",i+1);//设置分数
                imgs[i].onclick=function(){   //点击时调用方法
                    var srcEl=event.srcElement;//通过event来获取原元素
                    var score=srcEl.getAttribute("score");//获取分数
                    for(var j=0;j<score;j++){
                        imgs[j].src="img/starsy.png";
                    }
                    for(var j=score;j<imgs.length;j++){
                        imgs[j].src="img/starky.png";
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

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-16" data-genuitec-path="/FileManagement22/WebRoot/editFile.jsp">
<script language="JavaScript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-16" data-genuitec-path="/FileManagement22/WebRoot/editFile.jsp"> 
if (window != top)

top.location.href = location.href; 

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
                            <input type="text" name="fileName1" placeholder="输入文件名...">
                            <input type="hidden" name="fileName2">
                            <input type="hidden" name="fileName3">
                            <input type="submit" value="查找" style="width: 5px" align="center"></i>
                        </div>
                    </div>
                    </form>
                    <div class="right menu colhidden">
                    
                     <div class="ui dropdown item labeled icon" onclick="window.location='upload.jsp'" >
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
                                <h3 class="ui header">修改文件信息</h3>
                            </div>
							  <div class="ui segment fullheight" style="padding-left:40px;padding-right:40px;">
							<form class="ui form segment" name="form1" id="form1" action="servlet/UpdateFileServlet?id=${updatefile.fileId}&from=update" method="post" onsubmit="return validate(this)">
                                        <input type="hidden" name="cate" id="cate" value="${updatefile.category}"/>
                                        <input type="hidden" name="sh" id="sh" value="${updatefile.share}"/>
                                        <div class="ui hidden divider"></div>
										<div class="field">
                                                <label style="font-size:14px;">文件名</label>
                                                <input name="title" type="text" value="${updatefile.title}">
                                            </div><br/>
                                        <div class="two fields">
                                            <div class="field">
                                                <label style="font-size:14px;">内容分类</label>
                                                <select name="category" id="category" class="ui dropdown fluid selection">
                                                    <option value="1">课程文档</option>
                                                    <option value="2">科研文档</option>
                                                    <option value="3">工作文档</option>
                                                    <option value="4">兴趣拓展</option>
                                                    <option value="5">其他</option>
                                                </select>
                                            </div>
                                            <div class="field">
                                                <label style="font-size:14px;">是否公开</label>
                                                <select name="share" id="share" class="ui dropdown fluid selection">
                                                    <option value="true">公开</option>
                                                    <option value="false">个人</option>
                                                </select>
                                            </div>
                                        </div><br/>
                                            <div class="field">
                                                <label style="font-size:14px;">重要程度</label>
                                                <c:choose>
                                                <c:when test="${updatefile.importance>0}">
                            <%
                              FileInfo f=(FileInfo)session.getAttribute("updatefile");
                              int imp=f.getImportance();
                              int i;
                              for(i=0;i<imp;i++){
                                  %>
                                  <img name="star" src="img/starsy.png"><%
                              }
                              for(int j=i;j<5;j++){
                              %>
                                  <img name="star" src="img/starky.png"><%
                              }
                            %>
                            </c:when>
                            <c:otherwise>
                            <img name="star" src="img/starky.png">
                            <img name="star" src="img/starky.png">
                            <img name="star" src="img/starky.png">
                            <img name="star" src="img/starky.png">
                            <img name="star" src="img/starky.png">
                            </c:otherwise>
                            </c:choose>
                                            </div><br/>
                                            <div class="field">
                                                <label style="font-size:14px;">标签</label>
												<div class="jq22-content">
													<input id="tag" name="tag" type="text" value="${updatefile.tag}"></div>
                                            </div><br/>
										<div class="field">
                                            <label style="font-size:14px;">笔记</label>
                                           <textarea name="note" style="width: 100%; height: 15%" >${updatefile.note}</textarea>
                                        </div>
                                        <input type="submit" class="ui grey submit button" value="提交"></div>
                                    </form><br/>
                                    </div>
                                        
                              </div>
                            
							</div>
                            </div>
                        </div>
                    </div>
                </div>

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
