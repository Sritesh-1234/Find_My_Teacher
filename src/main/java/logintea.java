import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logintea")
public class logintea extends HttpServlet
{
    String uniuid;
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String url="jdbc:mysql://localhost:3306/findyourteacher";
        String uname="root";
        String pass="anup";
        HttpSession session=request.getSession();
        int l=0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            String n=request.getParameter("uid");
            String p=request.getParameter("pass");
            
            Statement st=con.createStatement();
            ResultSet rs = st.executeQuery("select * from teacherdetails;");
            while(rs.next())
            {
                String un=rs.getString("id");
                String pp=rs.getString("password");
                
                if(n.equals(un)&&p.equals(pp))
                {
                    uniuid=un;
                    //request.setAttribute("id",rs.getString("id"));
                    session.setAttribute("name",rs.getString("name"));
                    session.setAttribute("post",rs.getString("post"));
                    session.setAttribute("branch",rs.getString("branch"));
                    session.setAttribute("building",rs.getString("building"));
                    session.setAttribute("floor",rs.getString("floor"));
                    session.setAttribute("roomno",rs.getString("roomno"));
                    session.setAttribute("id",rs.getString("id"));
                    session.setAttribute("mail_id",rs.getString("mail_id"));
                    session.setAttribute("number",rs.getString("number"));

                    response.sendRedirect("teawelcome.jsp");
                    l=0;
                    String name=rs.getString("name");
                    session.setAttribute("username",name);
                    break;
                }
                else
                {
                    l=1;
                }
            }
            if(l==1)
            {
                session.setAttribute("error","Wrong Password <br>");
                response.sendRedirect("login.jsp");
            }
            st.close();
            con.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
}
