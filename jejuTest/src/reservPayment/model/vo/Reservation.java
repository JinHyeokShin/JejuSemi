package reservPayment.model.vo;

import java.util.Date;

public class Reservation {

	private int resNum;
	private int memNum;
	private int roomNum;
	private int resPax;
	private Date checkInDate;
	private Date checkOutDate;
	private String resCancel;
	private int resPrice;
	private String resCheckIn;
	private Date resDate;
	private Date resCancelDate;
	
	public Reservation() {
		
	}

	public Reservation(int resNum, int memNum, int roomNum, int resPax, Date checkInDate, Date checkOutDate,
			String resCancel, int resPrice, String resCheckIn, Date resDate, Date resCancelDate) {
		super();
		this.resNum = resNum;
		this.memNum = memNum;
		this.roomNum = roomNum;
		this.resPax = resPax;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.resCancel = resCancel;
		this.resPrice = resPrice;
		this.resCheckIn = resCheckIn;
		this.resDate = resDate;
		this.resCancelDate = resCancelDate;
	}

	public int getResNum() {
		return resNum;
	}

	public void setResNum(int resNum) {
		this.resNum = resNum;
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

	public int getResPax() {
		return resPax;
	}

	public void setResPax(int resPax) {
		this.resPax = resPax;
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

	public String getResCancel() {
		return resCancel;
	}

	public void setResCancel(String resCancel) {
		this.resCancel = resCancel;
	}

	public int getResPrice() {
		return resPrice;
	}

	public void setResPrice(int resPrice) {
		this.resPrice = resPrice;
	}

	public String getResCheckIn() {
		return resCheckIn;
	}

	public void setResCheckIn(String resCheckIn) {
		this.resCheckIn = resCheckIn;
	}

	public Date getResDate() {
		return resDate;
	}

	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}

	public Date getResCancelDate() {
		return resCancelDate;
	}

	public void setResCancelDate(Date resCancelDate) {
		this.resCancelDate = resCancelDate;
	}

	@Override
	public String toString() {
		return "Reservation [resNum=" + resNum + ", memNum=" + memNum + ", roomNum=" + roomNum + ", resPax=" + resPax
				+ ", checkInDate=" + checkInDate + ", checkOutDate=" + checkOutDate + ", resCancel=" + resCancel
				+ ", resPrice=" + resPrice + ", resCheckIn=" + resCheckIn + ", resDate=" + resDate + ", resCancelDate="
				+ resCancelDate + "]";
	}

	
	
	
}
