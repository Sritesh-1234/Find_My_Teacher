

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
import java.sql.SQLException;
import java.sql.Statement;


public class eavailbackend extends HttpServlet
{
    String query;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	    String url="jdbc:mysql://localhost:3306/findyourteacher";
        String uname="root";
        String pass="anup";
        String radio=request.getParameter("rdo");
        HttpSession session=request.getSession();
        String uniid= (String) session.getAttribute("id");

        
        if(radio.equals("1"))
	        query="update teacherdetails set avalable='1' where id='"+uniid+"';";
            //query="update teacherdetails set avalable='1' where id=?";
	    else
	        query="update teacherdetails set avalable='0' where id='"+uniid+"';";
            //query="update teacherdetails set avalable='0' where id=?";
	    try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            Statement st=con.createStatement();

            //PreparedStatement st=con.prepareStatement(query);
            //st.setString(1,uniid);
            
            st.execute(query);
            //System.out.println(query);

            response.sendRedirect("teawelcome.jsp");

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
}
