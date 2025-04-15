package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import bean.customerDetailsBean;
import connection.DBConnection;

public class customerDetailsDAO {
	int k;

	public int registerDetails(customerDetailsBean cb) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into customerDetails values(?,?,?,?,?)");
			ps.setString(1, cb.getFname());
			ps.setString(2, cb.getLname());
			ps.setString(3, cb.getMid());
			ps.setLong(4, cb.getContact());
			ps.setString(5, cb.getPword());
			return k = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return k = 0;

	}
}
