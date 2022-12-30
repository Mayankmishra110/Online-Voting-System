

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class VoterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		DBManager1 db = new DBManager1();
		java.sql.Connection con = db.getConnection();
		
		String vNumber = request.getParameter("voterNumber");
		
		try {
			PreparedStatement st= con.prepareStatement("select vNumber from temp_voter_id where vNumber= '"+vNumber+"'");
			ResultSet rs1 = st.executeQuery("select vNumber from temp_voter_id where vNumber= '"+vNumber+"'");
			
			if(rs1.next()) {
				response.sendRedirect("voted.jsp");
			}else {
				PreparedStatement st1= con.prepareStatement("select vNumber from voter where vNumber= '"+vNumber+"'");
				ResultSet rs2 = st1.executeQuery("select vNumber from voter where vNumber= '"+vNumber+"'");
				if(rs2.next()) {
					response.sendRedirect("voterWelCome.jsp");
				}else {
					response.sendRedirect("invalid.jsp");
				}
				
			}
			
		}
		catch( Exception e) {
			e.printStackTrace();
		}
	}

}
