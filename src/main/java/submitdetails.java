

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

public class submitdetails extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String url="jdbc:mysql://localhost:3306/findyourteacher";
        String uname="root";
        String pass="anup";

        HttpSession session=request.getSession();

		String query="update teacherdetails set name=?, mail_id=?, number=?, branch=?, post=?, building=?, floor=?, roomno=? where id=?";

		String a=request.getParameter("chname");
		String b=request.getParameter("chmail");
		String c=request.getParameter("chnumber");
		String d=request.getParameter("chdept");
		String f=request.getParameter("chpost");
		String g=request.getParameter("chbuilding");
		String h=request.getParameter("chfloor");
		String i=request.getParameter("chroomno");
		String j=request.getParameter("id");

		String k[]={"name","post","branch","building","floor","roomno","mail_id","number"};

		try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);

			PreparedStatement st=con.prepareStatement(query);

			st.setString(1, a);
			st.setString(2, b);
			st.setString(3, c);
			st.setString(4, d);
			st.setString(5, f);
			st.setString(6, g);
			st.setString(7, h);
			st.setString(8, i);
			st.setString(9, j);

			st.executeUpdate();

			for(int m=0;m<8;m++)
			{
				session.removeAttribute(k[m]);
			}

			session.setAttribute("name",a);
			session.setAttribute("post",f);
			session.setAttribute("branch",d);
			session.setAttribute("building",g);
			session.setAttribute("floor",h);
			session.setAttribute("roomno",i);
			session.setAttribute("mail_id",b);
			session.setAttribute("number",c);
			
			//session.removeAttribute("editable");

			response.sendRedirect("alterdetails.jsp");


		} catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
}
