
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import bean.customerDetailsBean;
import connection.DBConnection;
import jakarta.servlet.http.HttpServletRequest;

public class customerLoginDAO {
	customerDetailsBean cb = null;

	public customerDetailsBean login(HttpServletRequest req) {

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from customerDetails where MID=? and Pword=?");
			
			ps.setString(1, req.getParameter("mid"));
			ps.setString(2, req.getParameter("pword"));
			
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				cb = new customerDetailsBean();
				cb.setFname(rs.getString(1));
				cb.setLname(rs.getString(2));
				cb.setMid(rs.getString(3));
				cb.setContact(rs.getLong(4));
				cb.setPword(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cb;
	}
}
