package bean;

import java.io.Serializable;

public class customerDetailsBean implements Serializable {

	private static final long serialVersionUID = 1L;
	private String fname, lname, date, mid, pword, DestinationTO, DestinationFrom, journeyTime, classType, ticketID;
	private int seat;
	private long contact;

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public String getTicketID() {
		return ticketID;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setTicketID(String ticketID) {
		this.ticketID = ticketID;
	}

	public String getJourneyTime() {
		return journeyTime;
	}

	public void setJourneyTime(String journeyTime) {
		this.journeyTime = journeyTime;
	}

	public String getClassType() {
		return classType;
	}

	public void setClassType(String classType) {
		this.classType = classType;
	}

	private float price;

	public customerDetailsBean() {
		super();
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getPword() {
		return pword;
	}

	public void setPword(String pword) {
		this.pword = pword;
	}

	public String getDestinationTO() {
		return DestinationTO;
	}

	public void setDestinationTO(String destinationTO) {
		DestinationTO = destinationTO;
	}

	public String getDestinationFrom() {
		return DestinationFrom;
	}

	public void setDestinationFrom(String destinationFrom) {
		DestinationFrom = destinationFrom;
	}

	public long getContact() {
		return contact;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "customerDetailsBean [fname=" + fname + ", lname=" + lname + ", date=" + date + ", mid=" + mid
				+ ", pword=" + pword + ", DestinationTO=" + DestinationTO + ", DestinationFrom=" + DestinationFrom
				+ ", journeyTime=" + journeyTime + ", classType=" + classType + ", ticketID=" + ticketID + ", seat="
				+ seat + ", contact=" + contact + ", price=" + price + "]";
	}

}
