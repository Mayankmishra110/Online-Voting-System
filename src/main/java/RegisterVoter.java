

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;


public class RegisterVoter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html" );
		
		DBManager1 db = new DBManager1();
		java.sql.Connection con = db.getConnection();
		
		
		String name = request.getParameter("uName");
		String number = request.getParameter("pNumber");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String voterNumber = request.getParameter("voterNumber");
		String dob = request.getParameter("dob");
		
		try {
			
			
			
			PreparedStatement st= con.prepareStatement("insert into voter (uName, pNumber, email, address, vNumber, dob)values('"+name+"', '"+number+"','"+email+"','"+address+"','"+voterNumber+"','"+dob+"')");
			st.executeUpdate();
			response.sendRedirect("adminWelcome.jsp");
		}
		catch( Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
