package reservPayment.model.vo;

import java.util.Date;

public class Payment {
	
	private int payNum;
	private int reservNum;
	private int payPrice;
	private String payMethod;
	private String payCancel;
	private Date payDate;
	private Date payCancelDate;
	
	public Payment() {
		
	}

	public Payment(int payNum, int reservNum, int payPrice, String payMethod, String payCancel, Date payDate,
			Date payCancelDate) {
		super();
		this.payNum = payNum;
		this.reservNum = reservNum;
		this.payPrice = payPrice;
		this.payMethod = payMethod;
		this.payCancel = payCancel;
		this.payDate = payDate;
		this.payCancelDate = payCancelDate;
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

	public Date getPayCancelDate() {
		return payCancelDate;
	}

	public void setPayCancelDate(Date payCancelDate) {
		this.payCancelDate = payCancelDate;
	}

	@Override
	public String toString() {
		return "Payment [payNum=" + payNum + ", reservNum=" + reservNum + ", payPrice=" + payPrice + ", payMethod="
				+ payMethod + ", payCancel=" + payCancel + ", payDate=" + payDate + ", payCancelDate=" + payCancelDate
				+ "]";
	}

	
}
