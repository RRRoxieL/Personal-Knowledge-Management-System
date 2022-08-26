<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="javabean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>后台管理-文档管理-编辑文档</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
 <link href="semantic/dist/semantic.min.css" rel="stylesheet" />
    <link href="plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="plugins/pacejs/pace.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/jquery-ui-1.11.0.css">
	<link rel="stylesheet" href="css/jquery.tagsinput-revisited.css" />
 
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
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-154" data-genuitec-path="/FileManagementAdmin/WebRoot/updateFileAdmin2.jsp">
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
%>

<div class="navbar main" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-154" data-genuitec-path="/FileManagementAdmin/WebRoot/updateFileAdmin2.jsp">

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
						<a href="" class="menuToggle">文档管理</a>
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

 <div style="margin:0 15%;width:70%">
    
            <div class="sixteen wide tablet fourteen wide computer column">
              <div class="ui segment">
                <div class="ui tab active" data-tab="profile">

                                    <form class="ui form segment" name="form1" id="form1" action="UpdateFileAdminServlet?id=${updatefile.fileId}&from=update"
                                     method="post" onsubmit="return validate(this)">
                                        <input type="hidden" name="cate" id="cate" value="${updatefile.category}"/>
                                        <input type="hidden" name="sh" id="sh" value="${updatefile.share}"/>
                                        <h3 class="ui header">
                                                 修改文件信息
                                        </h3>
                                        <div class="ui hidden divider"></div>
										<div class="field">
                                                <label style="font-size:13px;line-height:30px;">文件名</label>
                                                <input name="title" type="text" style="height:50%;" value="${updatefile.title}">
                                            </div>
                                        <div class="two fields">
                                            <div class="field">
                                                <label style="font-size:13px;line-height:30px;">内容分类</label>
                                                <select name="category" id="category" class="ui dropdown fluid selection">
                                                    <option value="1">课程文档</option>
                                                    <option value="2">科研文档</option>
                                                    <option value="3">工作文档</option>
                                                    <option value="4">兴趣拓展</option>
                                                    <option value="5">其他</option>
                                                </select>
                                            </div>
                                            <div class="field">
                                                <label style="font-size:13px;line-height:30px;">是否公开</label>
                                                <select name="share" id="share" class="ui dropdown fluid selection">
                                                    <option value="true">公开</option>
                                                    <option value="false">个人</option>
                                                </select>
                                            </div>
                                        </div>
                                            <div class="field">
                                                <label style="font-size:13px;line-height:30px;">重要程度</label>
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
                                            <div class="field">
                                                <label style="font-size:13px;line-height:30px;">标签</label>
												<div class="jq22-content">
													<input id="tag" name="tag" type="text" value="${updatefile.tag}"></div>
                                            </div>
										<div class="field">
                                            <label style="font-size:13px;line-height:30px;">笔记</label>
                                           <textarea name="note" style="width: 100%; height: 15%" >${updatefile.note}</textarea>
                                        </div>
                                        <input type="submit" class="ui grey submit button" style="background-color:#71C39A;width:100px;" value="提交">
                                        </form> 
                                         <div style="float:right">
                                    	
                                    	<a href="adminFileListServlet">
                                    	<button name="backToUpload" style="width:100px;" class="ui submit button">
                                    	返回</button></a>
      
                                   		 </div>
                                         
                                        </div>
                                  		
                                    <br/>
                                    </div>
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
                                
                                    
</div></div>

    

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