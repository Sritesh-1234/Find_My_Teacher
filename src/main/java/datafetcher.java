import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/datafetcher")
public class datafetcher extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
//        String url="jdbc:mysql://localhost:3306/findyourteacher";
//        String uname="root";
//        String pass="anup";
//        HttpSession session=request.getSession();
//        
//        String ud=(String) session.getAttribute("id");
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection con = DriverManager.getConnection(url,uname,pass);
//            
//            Statement st=con.createStatement();
//            ResultSet rs = st.executeQuery("select * from teacherdetails where id='"+ud+"';");
//
//                session.setAttribute("name",rs.getString("name"));
//                session.setAttribute("id",rs.getString("id"));
//                session.setAttribute("mail_id",rs.getString("mail_id"));
//                session.setAttribute("number",rs.getString("number"));
//                session.setAttribute("branch",rs.getString("branch"));
//                session.setAttribute("post",rs.getString("post"));
//                session.setAttribute("building",rs.getString("building"));
//                session.setAttribute("floor",rs.getString("floor"));
//                session.setAttribute("roomno",rs.getString("roomno"));
//
//                
//            st.close();
//            con.close();
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        response.sendRedirect("alterdetails.jsp");
    }
}
