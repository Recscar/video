<%@ page language="java" import="java.util.*" contentType="text/html;charest=utf-8" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%@page import = "java.sql.*"%>
 
<%  

    String username=new String(request.getParameter("username").getBytes("ISO8859_1"),"GBK");  
    String password=new String(request.getParameter("password").getBytes("ISO8859_1"),"GBK");  
    try {  
        // �������ݿ�������ע�ᵽ����������  
        Class.forName("com.mysql.jdbc.Driver");  
        // ���ݿ������ַ���  
        String url = "jdbc:mysql://localhost:3306/videoforfree";  
        // ���ݿ��û���  
        String usename = "root";  
        // ���ݿ�����  
        String psw = "123456";  
        // ����Connection����  
        Connection conn = DriverManager.getConnection(url,usename,psw);  
        // �ж� ���ݿ������Ƿ�Ϊ��  
        if(conn != null){             
            String sql="select * from user where username='"+username+"' and password='"+ password + "'";  
            Statement stmt = conn.createStatement();  
            ResultSet rs=stmt.executeQuery(sql);  
            if(rs.next()){  
                response.sendRedirect("home.jsp");                
            }else{  
                out.print("�û���������������������룡");  
                %>  
                <a href="javascript:history.back()">����</a>  
                <%   
            }             
            // ���������Ϣ  
            out.println("���ݿ����ӳɹ���");  
            // �ر����ݿ�����  
            conn.close();  
        }else{  
            // ���������Ϣ  
            out.println("���ݿ�����ʧ�ܣ�");                          
        }  
    } catch (ClassNotFoundException e) {  
        e.printStackTrace();  
    } catch (SQLException e) {  
        e.printStackTrace();  
    }  
%>  
</body>  

</html>
