package reservPayment.model.vo;

import java.util.Date;

public class Payment {
	
	private int payNum;
	private int resNum;
	private int payPrice;
	private String payMethod;
	private String payCancel;
	private Date payDate;
	
	public Payment() {
		
	}

	public Payment(int payNum, int resNum, int payPrice, String payMethod, String payCancel, Date payDate) {
		super();
		this.payNum = payNum;
		this.resNum = resNum;
		this.payPrice = payPrice;
		this.payMethod = payMethod;
		this.payCancel = payCancel;
		this.payDate = payDate;
	}

	public int getPayNum() {
		return payNum;
	}

	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}

	public int getResNum() {
		return resNum;
	}

	public void setResNum(int resNum) {
		this.resNum = resNum;
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

	@Override
	public String toString() {
		return "Payment [payNum=" + payNum + ", resNum=" + resNum + ", payPrice=" + payPrice + ", payMethod="
				+ payMethod + ", payCancel=" + payCancel + ", payDate=" + payDate + ", getPayNum()=" + getPayNum()
				+ ", getResNum()=" + getResNum() + ", getPayPrice()=" + getPayPrice() + ", getPayMethod()="
				+ getPayMethod() + ", getPayCancel()=" + getPayCancel() + ", getPayDate()=" + getPayDate()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
	
	
	
	
	
}
