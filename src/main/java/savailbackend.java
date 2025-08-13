

import jakarta.servlet.ServletException;
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

public class savailbackend extends HttpServlet
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
            ResultSet rs = st.executeQuery("select avalable from teacherdetails where name='"+name+"';");
            
            rs.next();
            String a=rs.getString("avalable");
            System.out.println(a);
            
            if(a.equals("1"))
                session.setAttribute("xavl","TEACHER IS AVAILABLE");
            else
            {
                session.setAttribute("xavl","TEACHER IS NOT AVAILABLE");
            }
            
            
            st.close();
            con.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("savail.jsp");
	}

}
