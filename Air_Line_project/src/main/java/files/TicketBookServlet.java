package files;

import java.io.IOException;
import java.io.PrintWriter;
import DAO.TicketBookDAO;
import bean.customerDetailsBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ticketBook")
public class TicketBookServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		PrintWriter pw = res.getWriter();
		HttpSession hs = req.getSession(false);
		customerDetailsBean tempCb = (customerDetailsBean) hs.getAttribute("tempCb");

		String cardNo = req.getParameter("cNo");
		int em = Integer.parseInt(req.getParameter("em"));
		String ey = req.getParameter("ey");
		String cvv = req.getParameter("cvv");

		// if (cardNo.length() >= 16 && cardNo.length() <= 19 && em >= 1 && em <= 12 &&
		// cvv.length() == 3) {
		int k = new TicketBookDAO().bookTicket(tempCb);
		if (k > 0) {

			customerDetailsBean cb = (customerDetailsBean) hs.getAttribute("cb");

			cb.setMid(tempCb.getMid());
			cb.setFname(tempCb.getFname());
			cb.setDestinationTO(tempCb.getDestinationTO());
			cb.setDestinationFrom(tempCb.getDestinationFrom());
			cb.setContact(tempCb.getContact());
			cb.setJourneyTime(tempCb.getJourneyTime());
			cb.setDate(tempCb.getDate());
			cb.setPrice(tempCb.getPrice());
			cb.setClassType(tempCb.getClassType());
			cb.setTicketID(tempCb.getTicketID());
			cb.setSeat(tempCb.getSeat());
			hs.removeAttribute("tempCb");
			req.getRequestDispatcher("ticket.jsp").include(req, res);
		} else {
			hs.invalidate();
			hs.removeAttribute("cb");
			req.getRequestDispatcher("login.jsp").include(req, res);
		}
	}
//		else {
//			pw.print("Invalid Card Details");
//			req.getRequestDispatcher("payment.jsp").include(req, res);
//		}
}
