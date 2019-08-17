package payment.model.vo;

import java.util.Date;

public class Payment {	// 추후 결제 모듈 연동시 변경될 확률 높음(api쪽 반환값들에 맞춰서)
	
	private int payNum;				// 결제 번호
	private int resNum;				// 예약 번호
	private int payPrice;			// 결제 금액
	private String payMethod;		// 결제 방법
	private String payCancel;		// 결제 취소 여부(y/n)
	private Date payDate;			// 결제일
	private Date payCancelDate;		// 결제 취소일
	
	public Payment() {
		
	}

	public Payment(int payNum, int resNum, int payPrice, String payMethod, String payCancel, Date payDate,
			Date payCancelDate) {
		super();
		this.payNum = payNum;
		this.resNum = resNum;
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

	public Date getPayCancelDate() {
		return payCancelDate;
	}

	public void setPayCancelDate(Date payCancelDate) {
		this.payCancelDate = payCancelDate;
	}

	@Override
	public String toString() {
		return "Payment [payNum=" + payNum + ", resNum=" + resNum + ", payPrice=" + payPrice + ", payMethod="
				+ payMethod + ", payCancel=" + payCancel + ", payDate=" + payDate + ", payCancelDate=" + payCancelDate
				+ "]";
	}

	
	
	
}
