package network;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/Registration")
@MultipartConfig(maxFileSize = 16177215)
public class Register extends HttpServlet {

	// database connection settings

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	    String pub_name = request.getParameter("name");

	    String email = request.getParameter("email");
	String entity = request.getParameter("entity");
	    String entity_type = request.getParameter("entity_type");
//	    int pass = Integer.parseInt(request.getParameter("pass"));
	    
	    String concept = request.getParameter("concept");
	   
	    String instances = request.getParameter("instances");

	    String site_link = request.getParameter("site_link");

   /* String image = request.getParameter("image"); */
		System.out.println("Publisher Information :" + pub_name + entity + entity_type
				+ concept + instances + site_link);

		InputStream inputStream = null;

		Part filePart = request.getPart("upload");
		if (filePart != null) {

			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			inputStream = filePart.getInputStream();
		}

		Connection conn = null; // connection to the database
		String message = null; // message will be sent back to client

		try {
			// connects to the database

			DbConnection dbcon = new DbConnection();
			conn = dbcon.getConnection();
			System.out.println("Publisher Information :" + pub_name + entity + entity_type
					+ concept + instances + site_link);

			// constructs SQL statement
			String sql = "INSERT INTO publisher (pub_name, email,entity, entity_type,concept,instances,site_link,image) values (?,?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, pub_name);
			statement.setString(2, email);
			statement.setString(3, entity);
			statement.setString(4, entity_type);
			statement.setString(5, concept);
			statement.setString(6, instances);
			statement.setString(7, site_link);
		/*	statement.setString(8, image);*/

			if (inputStream != null) {
				statement.setBlob(8, inputStream);
			}

			int row = statement.executeUpdate();
			if (row > 0) {
				response.sendRedirect("ImageUpload.jsp?msg=Success");
			} else {
				response.sendRedirect("PHome.jsp?msgg=Error");
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}
}


