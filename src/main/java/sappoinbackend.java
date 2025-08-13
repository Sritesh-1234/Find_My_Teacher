

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class sappoinbackend extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String url="jdbc:mysql://localhost:3306/findyourteacher";
        String uname="root";
        String pass="anup"; 

	    HttpSession session=request.getSession();
        String roll=(String) session.getAttribute("rollno");

		String reason=request.getParameter("reason");
		String tid=request.getParameter("tid");

		//insert into appoin values('','','');
		String query="insert into appoin values(?,?,?);";

		try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            //Statement st=con.createStatement();
            
			PreparedStatement st=con.prepareStatement(query);
			st.setString(1, roll);
			st.setString(2, tid);
			st.setString(3, reason);

			st.executeUpdate();
            
            st.close();
            con.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("stuwelcome.jsp");
	}
}
