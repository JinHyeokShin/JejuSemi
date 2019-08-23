package payment.model.vo;

import java.util.Date;

public class Payment {	// 추후 결제 모듈 연동시 변경될 확률 높음(api쪽 반환값들에 맞춰서)
	
	private int payNum;				// 결제 번호
	private int reservNum;				// 예약 번호
	private int payPrice;			// 결제 금액
	private String payMethod;		// 결제 방법
	private String payCancel;		// 결제 취소 여부(y/n)
	private Date payDate;			// 결제일
	private Date CancelDate;		// 결제 취소일
	
	public Payment() {
		
	}

	public Payment(int payNum, int reservNum, int payPrice, String payMethod, String payCancel, Date payDate,
			Date cancelDate) {
		super();
		this.payNum = payNum;
		this.reservNum = reservNum;
		this.payPrice = payPrice;
		this.payMethod = payMethod;
		this.payCancel = payCancel;
		this.payDate = payDate;
		CancelDate = cancelDate;
	}

	public int getPayNum() {
		return payNum;
	}

	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}

	public int getReservNum() {
		return reservNum;
	}

	public void setReservNum(int reservNum) {
		this.reservNum = reservNum;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public String getPayCancel() {
		return payCancel;
	}

	public void setPayCancel(String payCancel) {
		this.payCancel = payCancel;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public Date getCancelDate() {
		return CancelDate;
	}

	public void setCancelDate(Date cancelDate) {
		CancelDate = cancelDate;
	}

	@Override
	public String toString() {
		return "Payment [payNum=" + payNum + ", reservNum=" + reservNum + ", payPrice=" + payPrice + ", payMethod="
				+ payMethod + ", payCancel=" + payCancel + ", payDate=" + payDate + ", CancelDate=" + CancelDate + "]";
	}

	
}
