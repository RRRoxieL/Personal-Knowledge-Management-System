<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>openword</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language=javascript type="text/javascript"> 

var addstr= document.URL;
var num=addstr.indexOf("?");
addstr=addstr.substr(num+1);
var pfile=addstr; 

var varpath = decodeURI(window.location.pathname);
var varhost=window.location.host; 
var strRoot,strSmartUrl;
if (varhost=='')
{
	//本机地址	
	strRoot = varpath.substring(1,varpath.lastIndexOf('/')+1);//取得打开、保存路径 
	if (strRoot =='')strRoot = varpath.substring(1,varpath.lastIndexOf('\\')+1);
	
}else
{
	//网络地址
	varpro=window.location.protocol;
	strRoot= varpro + "//" + varhost + "/" + varpath.substring(1,varpath.lastIndexOf('/')+1);
	if (strRoot =='')strRoot = varpath.substring(1,varpath.lastIndexOf('\\')+1);
	 
	} 


var strOpenUrl = strRoot + "file/" + pfile ; //取得打开路径和文件名  
var strSaveUrl; //取得保存路径和文件名
strSmartUrl = "WebOffice://|Officectrl|" + window.location.href;//开启智能窗模式
function WebOpen()
{
	obj = document.getElementById('WebOffice');//获得控件对象
	if (obj)setTimeout('openfile()',1000);//等待控件初始化完毕，时间可以根据网络速度设定。
}
function openfile()
{
	
	document.getElementById('WebOffice').Open(strOpenUrl,true,"Excel.Sheet","","");
}
 
function SmartOpen()
{
	location.href=strSmartUrl;
}
function WebJspSave()
{
	strSaveUrl = strRoot + 'upload.jsp'		 
	Save();
}
 
function Save()
{

	try{
		
		//a用于取得网页返回的数据，方便调试程序使用
		a=document.getElementById('WebOffice').Save(strSaveUrl);
		 // alert(a);
		alert('office文档保存成功!');
		location.reload();
	}
	catch(e)
	{
		alert('发生错误！请使用查阅返回值！');
	} 
		
}

function myFunction(){

	location.href= "http://localhost:8080/FileManagement/readServlet?read="+pfile;
}

</script> 

  </head>
  
<body topmargin=0 leftmargin=0 onload="javascript:WebOpen();">
<div style="text-align:left;font-size:15px;">
<input type="button"  class="button" value="Jsp后台保存" style="width:80px" onclick="WebJspSave();"/>&nbsp;&nbsp; 
<script language=javascript src="cssjs/webofficetip.js" charset="utf-8"></script>
<a href="javascript:SmartOpen();">智能窗口链接</a>
</div>
<script language=javascript src="cssjs/webofficeocx.js" charset="utf-8"></script>
<script language=javascript src="cssjs/copyright.js" charset="utf-8"></script>
</body>
</html>
