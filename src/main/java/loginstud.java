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

@WebServlet("/loginstud")
public class loginstud extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String url="jdbc:mysql://localhost:3306/findyourteacher";
        String uname="root";
        String pass="anup";
        HttpSession session=request.getSession();
        int l=0;
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            String n=request.getParameter("ROLL");
            String p=request.getParameter("pass");
            
            Statement st=con.createStatement();
            ResultSet rs = st.executeQuery("select * from studentcre;");
            while(rs.next())
            {
            	String un=rs.getString("rollno");
                String pp=rs.getString("password");
                
                if(p.equals(pp)&&n.equals(un))
                {
                    session.setAttribute("name",rs.getString("name"));
                    session.setAttribute("rollno",rs.getString("rollno"));
                    session.setAttribute("sem",rs.getString("SEM"));
                    session.setAttribute("section",rs.getString("Section"));
                    session.removeAttribute("error");
                	response.sendRedirect("stuwelcome.jsp");
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
