

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class chtp
 */
public class chtp extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	    String url="jdbc:mysql://localhost:3306/findyourteacher";
        String uname="root";
        String pass="anup";
        
        String a=request.getParameter("uid");
        String b=request.getParameter("pass");
        
        String query="update teacherdetails set password=? where id=?";
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);

            PreparedStatement st=con.prepareStatement(query);

            st.setString(1, b);
            st.setString(2, a);
            
            st.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("login.jsp");
	}

}
