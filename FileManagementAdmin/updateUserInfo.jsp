<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateUserInfo.jsp' starting page</title>
  
  <style type="text/css">
td{border:none;}
.shadow{width: 420px;height: 580px;background: #FFFFFF; border-radius: 6px;box-shadow:0px 0px 4px 4px #e0e0e0;}
.login{width: 63px;height: 40px;font-family: "微软雅黑";font-size: 21px;color:#707070;cursor: pointer;}
.login:hover{border-bottom: 2px solid #69b076;}
.sign-up{width: 63px;height: 40px;font-family: "微软雅黑";font-size: 21px;color:#69b076;cursor: pointer;border-bottom: 2px solid #69b076;}
a{
	color: #707070;
	text-decoration: none;
}

form{margin-top: 36px;}
input{width: 240px;padding-left: 10px;height: 30px;line-height: 30px;color:#848484;font-size: 14px;margin-bottom: 4px;background: inherit;border:0px;}
span{display: inline-block;float: left;}
.submit{width: 300px; height: 42px;background:#00a3af;color:#fff;cursor: pointer;font-family: "微软雅黑";font-size: 20px;border-radius: 20px;margin-top: 26px;}
.reset{width: 30px; height: 42px;background:#00a3af;color:#fff;cursor: pointer;font-family: "微软雅黑";font-size: 20px;border-radius: 20px;margin-top: 26px;}
.submit:hover{background:#008899;}
	strong{font-weight: normal;color:#00a3af;}
</style>  

<script type="text/javascript">
function check(){

		var vpwd = /^[A-Za-z0-9]+$/;
		var pwd1 = document.getElementById('pwd1');
		if (pwd1.value==''){
			alert('请输入原密码！');
			pwd1.focus();
			return false;
		}
		else if(pwd1.value.length<6){
			alert('原密码不少于6位！');
			pwd1.focus();
			return false;
		}
		else if(!vpwd.test(pwd1.value)){
					alert('密码由数字和字母组成');
					pwd1.focus();
					return false;
		}
		
		var pwd2 = document.getElementById('pwd2');
		if(!(pwd2.value==pwd1.value)){
			alert('新密码与原密码不能相同');
			pwd2.focus();
			return false;
		}

	//			新密码
		if(pwd2.value!=''){
				if(!vpwd.test(pwd2.value)){
					alert('密码由数字和字母组成');
					pwd2.focus();
					return false;
				}else{
					if(pwd2.value.length<6){
						alert('密码不能少于6位');
						pwd2.focus();
						return false;
					}
				}
			}
		}	
</script>
	
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63264",secure:"63271"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-156" data-genuitec-path="/FileManagementAdmin/WebRoot/updateUserInfo.jsp">
   
   <%
String message = (String)request.getAttribute("updateUserInfo");       
if(message != null) {
%>
<script type="text/javascript" language="javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-156" data-genuitec-path="/FileManagementAdmin/WebRoot/updateUserInfo.jsp">
alert("<%=message%>");                                            // 弹出修改成功信息
</script>
<%
}
%>
    
    <table width="600" border="0" align="center" style="margin-top: 30px;" id="sign-up">
  <tbody>
    <tr align="center">
      <td height="532" align="center" valign="top">
      <div class="shadow" style="padding-top: 40px;height: 500px">
      <table width="200" border="0">
  <tbody>
    <tr align="center">
      <td class="login">修改个人信息</td>
      
    </tr>
  </tbody>
</table>
<form  method="post" action="updateUserInfoServlet"  class="form" onsubmit="return check(this)" >
 <table width="300" style="border:solid #C6C6C6 0.5px;border-radius: 8px;background:#f6f6f6;">
  <tbody>
    <tr align="center">
      <td height="45">
      <img src="D:\Temp\image/r2.PNG" alt="" width="23" height="22" style="margin:4px 2px auto 4px;float:left;">
      <input type="password" name="passwordOri" id="pwd1" placeholder="原密码"/></td>
    </tr>
    <tr align="center">
      <td height="45">
      <img src="D:\Temp\image/r2.PNG" alt="" width="23" height="22" style="margin:4px 2px auto 4px;float:left;">
      <input type="password" name="password" id="pwd2" placeholder="新密码"/></td>
    </tr>
  </tbody>
</table><br>
<input type="submit" value="提交" onclick="return check(this)" name="signUp" id="signUp" class="submit"/>
</form>
</td>
    </tr>
  </tbody>
</table>
    
  </body>
</html>
