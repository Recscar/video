package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javabean.LoginBean;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginCheck extends HttpServlet {

	/**
	 * 
	 */

	static final String USER = "root";
	static final String PASS = "123456";
	static final String DBURL = "jdbc:mysql://localhost:3306/videoforfree";

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String username=new String(request.getParameter("username").getBytes("ISO8859_1"),"GBK");  
	    String password=new String(request.getParameter("password").getBytes("ISO8859_1"),"GBK");  
	    try {  
	        // 加载数据库驱动，注册到驱动管理器  
	        Class.forName("com.mysql.jdbc.Driver");  
	        // 数据库连接字符串  
	        String url = "jdbc:mysql://localhost:3306/videoforfree?useSSL=true";  
	        // 数据库用户名  
	        String usename = "root";  
	        // 数据库密码  
	        String psw = "123456";  
	        // 创建Connection连接  
	        Connection conn = DriverManager.getConnection(url,usename,psw);  
	        // 判断 数据库连接是否为空  
	        if(conn != null){
	        	
	        	if(username.equals("")||password.equals("")){
	        		//out.println("<script> alert(\"帐号或密码不能为空!\");location.href='http://123.207.89.70';</script>");
	        		out.println("<script> alert(\"帐号或密码不能为空!\");location.href='http://123.207.89.70';</script>");
	    		}
	            String sql="select * from user where username='"+username+"' and password='"+ password + "'";  
	            Statement stmt = conn.createStatement();  
	            ResultSet rs=stmt.executeQuery(sql);  
	            if(rs.next()){  
	                //response.sendRedirect("http://localhost:9999/VideoForFree/freevideo/xxx");   
	            	//jsp:forward page ="/WEB-INF/home.jsp";
	            request.getRequestDispatcher("/WEB-INF/home.jsp").forward(request,response);
	            }else{  
	            	//out.println("<script> alert(\"帐号或密码错误!\");location.href='http://123.207.89.70';</script>");
	            	out.println("<script> alert(\"帐号或密码错误!\");location.href='http://123.207.89.70';</script>");

	            }                       
	            // 关闭数据库连接  
	            conn.close();  
	        }else{  
	            // 输出连接信息  
	        	//out.println("<script> alert(\"数据库连接失败!\");location.href='http://123.207.89.70';</script>");    
	        	out.println("<script> alert(\"数据库连接失败!\");location.href='http://123.207.89.70';</script>");   
	        }  
	    } catch (ClassNotFoundException e) {  
	        e.printStackTrace();  
	    } catch (SQLException e) {  
	        e.printStackTrace();  
	    }  
		
	}
	
	private void destory() {
		// TODO Auto-generated method stub

	}
}