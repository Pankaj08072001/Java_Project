package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import bean.customerDetailsBean;
import connection.DBConnection;

public class TicketBookDAO {

	public static final String query = "INSERT INTO TICKETDETAILS VALUES(?,?,?,?,?,?,?,?,?,?)";
	int k;

	public int bookTicket(customerDetailsBean tempCb) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, tempCb.getMid());
			ps.setString(2, tempCb.getFname());
			ps.setString(3, tempCb.getDestinationTO());
			ps.setString(4, tempCb.getDestinationFrom());
			ps.setLong(5, tempCb.getContact());
			ps.setString(6, tempCb.getDate());
			ps.setString(7, tempCb.getJourneyTime());
			ps.setFloat(8, tempCb.getPrice());
			ps.setString(9, tempCb.getClassType());
			ps.setString(10, tempCb.getTicketID());

			k = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return k;
	}
}
