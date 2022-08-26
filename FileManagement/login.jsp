
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html lang="en">
<head>
    <!-- Standard Meta -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" name="viewport" />

    <!-- Site Properities -->
    <meta name="generator" content="Visual Studio 2015" />
    <title>登陆页面</title>
    <meta name="description" content="Stagb Admin Template" />
    <meta name="keywords" content="html5, ,semantic,ui, library, framework, javascript,jquery,template,blog,stagb,template" />
    <link href="semantic/dist/semantic.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    
    <script type="text/javascript">
function check(){
// 用户
		var name = document.getElementById("id");			
		if(name.value==''){
			alert('用户不能为空');
			name.focus();
			return false;
		}

//			密码
		var psw1 = document.getElementById('psw1');
		if(psw1.value==''){
			alert('密码不能为空');
			psw1.focus();
			return false;
		}
}
</script>

<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63264",secure:"63271"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-20" data-genuitec-path="/FileManagement22/WebRoot/login.jsp">



<%

String errorInfo = (String)session.getAttribute("loginError");         // 获取错误属性
String successInfo = (String)session.getAttribute("signupSuccess"); 
if(errorInfo != null) { 
%>
<script type="text/javascript" language="javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-20" data-genuitec-path="/FileManagement22/WebRoot/login.jsp">
alert("<%=errorInfo%>"); 
                                       // 弹出错误信息
</script>
<%
session.removeAttribute("loginError");    
}

if(successInfo!=null){
%>
<script type="text/javascript" language="javascript">
alert("<%=successInfo%>"); 
                                       // 弹出正确信息
</script>
<%
session.removeAttribute("signupSuccess");    
}

%>


    <div class="ui container" style="padding-top:10%">
        <div class="ui grid center aligned">
            <div class="row">
                <div class="sixteen wide tablet six wide computer column" align="center">
                    <div class="ui left aligned segment" style="width:500px" >

                        <form  method="post" action="servlet/LoginServlet" class="form" onsubmit="return check(this)" style="margin-top: 60px;">

                            <h1 class="ui header center aligned">
                                <img style="width: 180px;height: 50px" src="img/logo.png" alt="stagblogo" class="ui small image">
<h style="color:orange">登录页面</h>
                                <div class="content">

                                </div>
                            </h1>

                            <div class="field">
                                <label>
                                    用户名:
                                </label>
                                <div class="ui fluid icon input">
                                    <input type="text" name="userId" id="id" autocomplete="off" style="width:100%!important;min-width:100%;width:100%;">
                                    <i class="icon mail outline"></i>
                                </div>
                            </div>
                            <div class="field">
                                <label>
                                    密码:
                                </label>
                                <div class="ui fluid icon input">
                                    <input  type="password" name="userPassword" id="psw1" autocomplete="off" style="width:100%!important;min-width:100%;width:100%;">
                                    <i class="icon key"></i>
                                </div>
                                
                            <div class="ui checkbox" align="center">
                                            <input type="checkbox" name="rememberMe" value="checkbox" checked="checked" class="checkbox">
                                            <label style="text-align:center; for="terms">记住我的账户</label>
                                        </div>
                                        
                                <div style="text-align:center; margin:10px auto auto 65px;font-family:'微软雅黑';font-size: 15px;height: 20px;padding-top: 3px;width: 150px">
                                </div>
                            </div>
                            <div class="field">

                               <input type="submit" class="ui teal right labeled icon button fluid">
                                   
                                </form>   
                               

                                <a class="ui blue right labeled icon button fluid" href="signup.jsp">
                                    注册
                                    <i class="icon sign in"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery-2.1.4.min.js"></script>

    <script>
        var colors = ["#F25F5C", "#247BA0", "#8e44ad", "#ED6A5A", "#32936F", "#2c3e50", "#E83F6F", "#32936F", "#2E294E"];
        var rand = Math.floor(Math.random() * colors.length);
        $('body').css("background-color", colors[rand]);
    </script>
</body>
</html>
