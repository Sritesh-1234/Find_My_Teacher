

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class logoutbackend extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	    HttpSession session=request.getSession();
	    String ss[]= {"name","post","branch","building","floor","roomno","id","mail_id","number","username","error","xname","xnumber","xpost","xbranch","xbuilding","xfloor","xroomno","xavl"};
	    
	    for(int i=0;i<ss.length;i++)
	    {
	        session.removeAttribute(ss[i]);
	    }
	    response.sendRedirect("login.jsp");
	}

}
