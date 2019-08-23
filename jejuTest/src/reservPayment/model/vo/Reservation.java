package reservPayment.model.vo;

import java.util.Date;

public class Reservation {

	private int reservNum;
	private int memNum;
	private int roomNum;
	private int reservPax;
	private Date checkInDate;
	private Date checkOutDate;
	private int reservPrice;
	private String reservCancel;
	private Date reservDate;
	private Date cancelDate;
	private String reservRequire;
	private String noShow;
	private String status;
	
	public Reservation() {
		
	}

	public Reservation(int reservNum, int memNum, int roomNum, int reservPax, Date checkInDate, Date checkOutDate,
			int reservPrice, String reservCancel, Date reservDate, Date cancelDate, String reservRequire, String noShow,
			String status) {
		super();
		this.reservNum = reservNum;
		this.memNum = memNum;
		this.roomNum = roomNum;
		this.reservPax = reservPax;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.reservPrice = reservPrice;
		this.reservCancel = reservCancel;
		this.reservDate = reservDate;
		this.cancelDate = cancelDate;
		this.reservRequire = reservRequire;
		this.noShow = noShow;
		this.status = status;
	}

	public int getReservNum() {
		return reservNum;
	}

	public void setReservNum(int reservNum) {
		this.reservNum = reservNum;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public int getRoomNum() {
		return roomNum;
	}

	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}

	public int getReservPax() {
		return reservPax;
	}

	public void setReservPax(int reservPax) {
		this.reservPax = reservPax;
	}

	public Date getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(Date checkInDate) {
		this.checkInDate = checkInDate;
	}

	public Date getCheckOutDate() {
		return checkOutDate;
	}

	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}

	public int getReservPrice() {
		return reservPrice;
	}

	public void setReservPrice(int reservPrice) {
		this.reservPrice = reservPrice;
	}

	public String getReservCancel() {
		return reservCancel;
	}

	public void setReservCancel(String reservCancel) {
		this.reservCancel = reservCancel;
	}

	public Date getReservDate() {
		return reservDate;
	}

	public void setReservDate(Date reservDate) {
		this.reservDate = reservDate;
	}

	public Date getCancelDate() {
		return cancelDate;
	}

	public void setCancelDate(Date cancelDate) {
		this.cancelDate = cancelDate;
	}

	public String getReservRequire() {
		return reservRequire;
	}

	public void setReservRequire(String reservRequire) {
		this.reservRequire = reservRequire;
	}

	public String getNoShow() {
		return noShow;
	}

	public void setNoShow(String noShow) {
		this.noShow = noShow;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Reservation [reservNum=" + reservNum + ", memNum=" + memNum + ", roomNum=" + roomNum + ", reservPax="
				+ reservPax + ", checkInDate=" + checkInDate + ", checkOutDate=" + checkOutDate + ", reservPrice="
				+ reservPrice + ", reservCancel=" + reservCancel + ", reservDate=" + reservDate + ", cancelDate="
				+ cancelDate + ", reservRequire=" + reservRequire + ", noShow=" + noShow + ", status=" + status + "]";
	}

}
