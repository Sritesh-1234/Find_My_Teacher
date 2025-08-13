

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class fdetailsbackend extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String url="jdbc:mysql://localhost:3306/findyourteacher";
		String uname="root";
		String pass="anup"; 

		HttpSession session=request.getSession();
		String name=request.getParameter("tname");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,uname,pass);
			
			Statement st=con.createStatement();
			ResultSet rs = st.executeQuery("select * from teacherdetails;");
			while(rs.next())
			{
				String name1=rs.getString("name");
				
				if(name.equalsIgnoreCase(name1))
				{
					session.setAttribute("xname",rs.getString("name"));
					session.setAttribute("xnumber",rs.getString("number"));
					session.setAttribute("xpost",rs.getString("post"));
					session.setAttribute("xbranch",rs.getString("branch"));
					session.setAttribute("xbuilding",rs.getString("building"));
					session.setAttribute("xfloor",rs.getString("floor"));
					session.setAttribute("xroomno",rs.getString("roomno"));
					response.sendRedirect("fdetails.jsp");
					break;
				}
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
