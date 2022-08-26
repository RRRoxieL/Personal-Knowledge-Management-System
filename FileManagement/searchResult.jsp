<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import="javabean.*" %>


<%@ page contentType="text/html; charset=UTF-8"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <base href="<%=basePath%>">
  <title>文档检索</title>
    <meta charset="utf-8" />
    <link rel="icon" href="img/favicon.ico" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link href="semantic/dist/semantic.min.css" rel="stylesheet" />
    <link href="plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="plugins/pacejs/pace.css" rel="stylesheet" />
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63264",secure:"63271"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-48" data-genuitec-path="/FileManagement22/WebRoot/searchResult.jsp">

   <div class="row" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-48" data-genuitec-path="/FileManagement22/WebRoot/searchResult.jsp">
                    <div class="sixteen wide tablet sixteen wide computer column">
                        <div class="ui segments">
                            <div class="ui segment">
                                <h  class="ui header">
                                    检索
                                </h>
                            </div>
                <div class="ui segment">
                    <div class="ui top attached tabular menu stackable">
              <% String unlog= request.getParameter("unlog");
              	if (unlog==null){
               %>
                        <a class="item" id="2button" data-tab="one" onclick="modClass('2button')">查询全部文档</a>
                <%} %>
                        <a class="item" data-tab="two">公开文档查询</a>
               <%if (unlog==null){ %>
                        <a class="item" data-tab="three">个人文档查询</a>
               <%} %>
                        <a class="item" data-tab="four"></a>
                    </div>
       <div class="ui bottom attached tab segment" data-tab="one">
       
        <form  method="post" action="servlet/SearchFileServlet?fileName1=1&fileName2=&fileName3=" 
        class="form" onsubmit="return check(this)" >
         <div class="item ui colhidden">
         <div class="ui icon input">
          <input type="text" name="search" placeholder="输入文件名...">
          <input type="submit" value="查找" style="width: 5px" align="center"></i>
          </div>
          </div>
         </form>     
                </div>     <!-- section1 end -->
                    
                    <div class="ui bottom attached tab segment" data-tab="two">
                        <form  method="post" action="servlet/SearchFileServlet?fileName1=&fileName2=2&fileName3=" class="form" onsubmit="return check(this)" >
                      <div class="item ui colhidden">
                      <div class="ui icon input">
                       <input type="text" name="search" placeholder="输入文件名...">
                       <input type="submit" value="查找" style="width: 5px" align="center"></i>
                       </div>
                       </div>
                      </form>      
                     <!-- section2 end -->
                    </div>
                                
                    <div class="ui bottom attached tab segment" data-tab="three">
                         <form  method="post" action="servlet/SearchFileServlet?fileName3=3&fileName1=&fileName2=" class="form" onsubmit="return check(this)" >
                      <div class="item ui colhidden">
                      <div class="ui icon input">
                       <input type="text" name="search" placeholder="输入文件名...">
                       <input type="submit" value="查找" style="width: 5px" align="center"></i>
                       </div>
                       </div>
                       </form>       
                     <!-- section3 end -->
                    </div>
                    
	 <div class="ui bottom attached tab segment active" data-tab="four">
          
 <% 
 ArrayList<FileInfo> files= (ArrayList<FileInfo>)session.getAttribute("files");
 if (files!=null){
%> 
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
<!-- 查询全部文档 -->      
    <table class="ui celled table tablet stackable">
 <thead>
<tr>
        <th>文件名</th>
        <th>内容分类</th>
        <th>标签</th>
        <th>重要程度</th>
        <th>公开状态</th>
        <th>用户笔记</th>
        <th>操作</th>
     </tr>
   </thead>
   <tbody>
   
<% for (FileInfo f:files){
 String tag= f.getTag();
 if (tag=="null"){
  tag="";
  }
 %>    
<tr>
  <td><%=f.getTitle()%></td>
  <td><%=f.getCategory()%></td>
  <td><%=tag%></td>

   <td><div class="ui star dsbl rating disabled" data-rating="<%=f.getImportance()%>">
  <i class="icon"></i>
   <i class="icon"></i>
  <i class="icon"></i>
 <i class="icon"></i>
  <i class="icon"></i>
 
  </div></td>
  
   <%if (f.isShare()){ %>
			<td> <i class="check green icon"></i></td>
	<%}else{ %>
			<td> <i class="close red icon"></i></td>
	<%} %>
			<td><%=f.getNote() %></td>
            <td class="center">
			<a href="" title="预览"><i class="unhide icon"></i></a>
			<a href="servlet/UpdateFileServlet?id=<%=f.getFileId()%>&from=searchResult" 
			  title="编辑"><i class="edit icon"></i></a>
			<a href="servlet/UserDeleteFileServlet?fileId=<%=f.getFileId()%>&from=searchResult" 
			   title="删除"><i class="remove circle icon"></i></a>
			 </td>
      </tr> <%}%>  
      </tbody>
                      
</table>     

<%}
if (request.getSession().getAttribute("files")!=null) {
	request.getSession().removeAttribute("files");
} 
%>  
                                </div>
                            </div>
                        </div>
                    </div>
             </div>
 
                
                 <!--jquery-->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!--jquery-->
    <!--semantic-->
    <script src="semantic/dist/semantic.min.js"></script>
    <!--semantic-->
    <script src="plugins/cookie/js.cookie.js"></script>
    <script src="plugins/adress/jquery.address.js"></script>
    <script src="plugins/nicescrool/jquery.nicescroll.min.js"></script>
    <script data-pace-options='{ "ajax": false }' src="plugins/pacejs/pace.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
