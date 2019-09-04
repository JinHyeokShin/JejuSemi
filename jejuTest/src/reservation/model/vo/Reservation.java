package reservation.model.vo;

import java.util.Date;

public class Reservation {

	private String reservNum;			// 예약 번호
	private int memNum;				// 예약한 회원 번호
	private int roomNum;			// 방 번호
	private int reservPax;			// 예약 인원
	private String checkInDate;		// 체크인 
	private String checkOutDate;		// 체크아웃
	private int reservPrice;		// 결제 예상 금액
	private String reservCancel;	// 예약 취소 여부(y/n)
	private String reservDate;		// 예약 날짜 --> 예약이 발생한 날짜
	private String cancelDate;		// 예약 취소 날짜
	private String reservRequire;	// 예약 문의
	private String noShow;			// 노쇼
	private String status;			// 상태
	
	public Reservation() {
		
	}
	
	
	
	public Reservation(String reservNum, int memNum, int roomNum, int reservPax, String checkInDate, String checkOutDate,
			int reservPrice, String reservRequire) {
		super();
		this.reservNum = reservNum;
		this.memNum = memNum;
		this.roomNum = roomNum;
		this.reservPax = reservPax;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.reservPrice = reservPrice;
		this.reservRequire = reservRequire;
	}



	public Reservation(String reservNum, int memNum, int roomNum, int reservPax, String checkInDate, String checkOutDate,
			int reservPrice, String reservCancel, String reservDate, String cancelDate, String reservRequire, String noShow,
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
	
	
	public Reservation(String reservNum, int roomNum, int reservPax, String checkInDate, String checkOutDate,
			int reservPrice, String reservCancel, String reservDate, String cancelDate, String reservRequire, String noShow,
			String status) {
		super();
		this.reservNum = reservNum;
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



	public String getReservNum() {
		return reservNum;
	}

	public void setReservNum(String reservNum) {
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

	public String getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}

	public String getCheckOutDate() {
		return checkOutDate;
	}

	public void setCheckOutDate(String checkOutDate) {
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

	public String getReservDate() {
		return reservDate;
	}

	public void setReservDate(String reservDate) {
		this.reservDate = reservDate;
	}

	public String getCancelDate() {
		return cancelDate;
	}

	public void setCancelDate(String cancelDate) {
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
