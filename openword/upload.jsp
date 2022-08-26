<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %> 
<% 
String rootpath=application.getRealPath("");  
String filepath=""; 
filepath = "\\file\\20161108144356.doc"; 
filepath = rootpath +filepath; 
FileOutputStream fileOut=new FileOutputStream(filepath); 
DataInputStream din=new DataInputStream(request.getInputStream()); 
int formDataLength=request.getContentLength(); 
byte dataBytes[]=new byte[formDataLength];
//int num=din.skipBytes(10);
din.readFully(dataBytes,0,formDataLength);
fileOut.write(dataBytes); 
fileOut.close(); 
din.close();
%>
