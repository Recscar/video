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
    // ���ݿ�����Connection    
    private Connection conn;    
    
    // ��ʼ������    
    public void init() throws ServletException {    
        super.init();    
        try {    
            // ��������    
            Class.forName("com.mysql.jdbc.Driver");    
            // ���ݿ�����url    
            String url = "jdbc:mysql://localhost:3306/videoforfree?useSSL=true";    
            // ��ȡ���ݿ�����    
            conn = DriverManager.getConnection(url, "root", "123456");    
            System.out.println("���ݿ����ӳɹ�!");    
        } catch (Exception e) {    
            e.printStackTrace();    
        }    
    }    
    
    // doPost()��������ע������    
    public void doPost(HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {    
        // ����request��response�ı���    
        response.setContentType("text/html");    
        request.setCharacterEncoding("GBK");    
        response.setCharacterEncoding("GBK");    
        // ��ȡ��������ֵ    
        String email = request.getParameter("email");    
        String password = request.getParameter("password");    
        
        // �ж����ݿ��з����ӳɹ�    
        if (conn != null) {    
            try {    
                // ����ע����Ϣ��SQL���(ʹ��?ռλ��)    
                String sql = "insert into user(username,password) "    
                        + "values(?,?)";    
                // ����PreparedStatement����    
                PreparedStatement ps = conn.prepareStatement(sql);    
                // ��SQL����еĲ�����̬��ֵ    
                ps.setString(1, email);    
                ps.setString(2, password);    
                  
                // ִ�и��²���    
                ps.executeUpdate();    
                // ��ȡPrintWriter����    
                PrintWriter out = response.getWriter();    
                // ���ע������Ϣ    
//                out.print("<h1 aling='center'>");    
//                out.print(email + "ע��ɹ���");    
//                out.print("</h1>"); 
                out.println("<script> alert(\"ע��ɹ�!�뷵����ҳ��½��\");location.href='http://123.207.89.70';</script>");
                
                out.flush();    
                out.close();    
            } catch (Exception e) {    
                e.printStackTrace();    
            }    
        } else {    
            // �������ݿ����Ӵ�����ʾ��Ϣ    
            response.sendError(500, "���ݿ����Ӵ���");    
        }    
    }    
}    