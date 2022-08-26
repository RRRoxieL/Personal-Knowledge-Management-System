<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <!-- Standard Meta -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" name="viewport" />

    <!-- Site Properities -->
    <meta name="generator" content="Visual Studio 2015" />
    <title>注册页面</title>
    <meta name="description" content="Stagb Admin Template" />
    <meta name="keywords" content="html5, ,semantic,ui, library, framework, javascript,jquery,template,blog,stagb,template" />
    <link href="semantic/dist/semantic.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    
    <script type="text/javascript">

function check(){
//			姓名
		var name = document.getElementById("name");			
		if(name.value==''){
			alert('用户不能为空');
			name.focus();
			return false;
		}else{
			var vname=(/^[\u4E00-\u9FA5a-zA-Z0-9_]{3,10}$/); //用户名，汉字、字母、数字、下划线
			if (!vname.test(name.value)) {
				alert('用户名3-10个字，只能是汉字、字母、数字和下划线');
				name.focus();
				return false; 
			}
		}					 					
	

//			密码
		var pwd1 = document.getElementById('pwd1');
		if(pwd1.value==''){
			alert('密码不能为空');
			pwd1.focus();
			return false;
		}else{
			var vpwd = /^[A-Za-z0-9]+$/;
			if(!vpwd.test(pwd1.value)){
				alert('密码错误，密码由数字和字母组成');
				pwd1.focus();
				return false;
			}else{
				if(pwd1.value.length<6){
					alert('密码不能少于6位');
					pwd1.focus();
					return false;
				}
			}
		}	
	//			验证密码
		var pwd2 = document.getElementById('pwd2');
		if(!(pwd2.value==pwd1.value)){
			alert('确认密码与第一次输入不同，请重新输入');
			pwd2.focus();
			return false;
		}
window.history.go(-1);
}	
</script>


<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63264",secure:"63271"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body bgcolor="#eeeeee" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-141" data-genuitec-path="/FileManagement22/WebRoot/signup.jsp">

<%
String errorInfo = (String)session.getAttribute("signupError");         // 获取错误属性
if(errorInfo != null) {
%>
<script type="text/javascript" language="javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-141" data-genuitec-path="/FileManagement22/WebRoot/signup.jsp">
alert("<%=errorInfo%>");                                            // 弹出错误信息
</script>
<%
session.removeAttribute("signupError");    
}
%>
<div class="ui container" style="padding-top:10%">
        <div class="ui grid center aligned">
            <div class="row">
                <div class="sixteen wide tablet six wide computer column" align="center">
                    <div class="ui left aligned segment" style="width:500px" >

                        <form  method="post" action="servlet/SignupServlet" class="form" onsubmit="return check(this)" style="margin-top: 60px;">

                            <h1 class="ui header center aligned">
                                <img style="width: 180px;height: 50px" src="img/logo.png" alt="stagblogo" class="ui small image">
<h style="color:orange">注册页面</h>
                                <div class="content">

                                </div>
                            </h1>

                            <div class="field">
                                <label>
                                    用户名:
                                </label>
                                <div class="ui fluid icon input">
                                    <input type="text" name="userName" id="name" autocomplete="off" style="width:100%!important;min-width:100%;width:100%;">
                                    <i class="icon mail outline"></i>
                                </div>
                            </div>
                            <div class="field">
                                <label>
                                    设置密码:
                                </label>
                                <div class="ui fluid icon input">
                                    <input  type="password" name="Password" id="pwd1" autocomplete="off" style="width:100%!important;min-width:100%;width:100%;">
                                    <i class="icon key"></i>
                                </div>
                            </div>
                              <div class="field">
                                <label>
                                    确认密码:
                                </label>
                                <div class="ui fluid icon input">
                                    <input  type="password" name="userPassword" id="pwd2" autocomplete="off" style="width:100%!important;min-width:100%;width:100%;">
                                    <i class="icon key"></i>
                                </div>
                                
                           
                                        
                                <div style="text-align:center; margin:10px auto auto 65px;font-family:'微软雅黑';font-size: 15px;height: 20px;padding-top: 3px;width: 150px">
                                </div>
                            </div>
                            <div class="field">

                               <input type="submit" class="ui teal right labeled icon button fluid" value="注册" onclick="return check(this)" name="signUp" id="signUp">
                                   
                                   
                               

                              <div style="text-align: center;font-family: '宋体';font-size:13px;color: #868686;margin-top: 6px;">点击“注册”即表示您同意并愿意遵守我们的<br><strong>用户协议</strong>和<strong>隐私政策</strong>。</div>
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
