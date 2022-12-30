

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;

public class Contacts extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Contacts() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html" );
		
		
		DBManager1 db = new DBManager1();
		java.sql.Connection con = db.getConnection();
		
		String name = request.getParameter("uName");
		String number = request.getParameter("pNumber");
		String email = request.getParameter("email");
		String comment = request.getParameter("cmnt");
		
		
		try {
			PreparedStatement st= con.prepareStatement("insert into contact (uName, pNumber, email, cmnt)values('"+name+"', '"+number+"','"+email+"','"+comment+"')");
			st.executeUpdate();
			response.sendRedirect("index.jsp");
		}
		catch( Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
