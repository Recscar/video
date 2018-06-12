package servlet;
    
import java.io.IOException;    
import java.io.PrintWriter;    
import java.sql.Connection;    
import java.sql.DriverManager;    
import java.sql.PreparedStatement;    
    
import javax.servlet.ServletException;    
import javax.servlet.http.HttpServlet;    
import javax.servlet.http.HttpServletRequest;    
import javax.servlet.http.HttpServletResponse;    
    
public class SignUp extends HttpServlet {    
    private static final long serialVersionUID = 1789481329876401944L;    
    // 数据库连接Connection    
    private Connection conn;    
    
    // 初始化方法    
    public void init() throws ServletException {    
        super.init();    
        try {    
            // 加载驱动    
            Class.forName("com.mysql.jdbc.Driver");    
            // 数据库连接url    
            String url = "jdbc:mysql://localhost:3306/videoforfree?useSSL=true";    
            // 获取数据库连接    
            conn = DriverManager.getConnection(url, "root", "123456");    
            System.out.println("数据库连接成功!");    
        } catch (Exception e) {    
            e.printStackTrace();    
        }    
    }    
    
    // doPost()方法处理注册请求    
    public void doPost(HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {    
        // 设置request与response的编码    
        response.setContentType("text/html");    
        request.setCharacterEncoding("GBK");    
        response.setCharacterEncoding("GBK");    
        // 获取表单中属性值    
        String email = request.getParameter("email");    
        String password = request.getParameter("password");    
        
        // 判断数据库中否连接成功    
        if (conn != null) {    
            try {    
                // 插入注册信息的SQL语句(使用?占位符)    
                String sql = "insert into user(username,password) "    
                        + "values(?,?)";    
                // 创建PreparedStatement对象    
                PreparedStatement ps = conn.prepareStatement(sql);    
                // 对SQL语句中的参数动态赋值    
                ps.setString(1, email);    
                ps.setString(2, password);    
                  
                // 执行更新操作    
                ps.executeUpdate();    
                // 获取PrintWriter对象    
                PrintWriter out = response.getWriter();    
                // 输出注册结果信息    
//                out.print("<h1 aling='center'>");    
//                out.print(email + "注册成功！");    
//                out.print("</h1>"); 
                out.println("<script> alert(\"注册成功!请返回首页登陆！\");location.href='http://123.207.89.70';</script>");
                
                out.flush();    
                out.close();    
            } catch (Exception e) {    
                e.printStackTrace();    
            }    
        } else {    
            // 发送数据库连接错误提示信息    
            response.sendError(500, "数据库连接错误！");    
        }    
    }    
}    