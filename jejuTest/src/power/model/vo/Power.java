package power.model.vo;

import java.util.Date;

public class Power {
	
	private int powerNum;		// 파워등록 번호
	private int acmNum;			// 숙소 이름
	private int payNum;			// 결제 번호
	private Date startDate;		// 파워등록 시작일
	private Date endDate;		// 파워등록 종료일
	private String powerStatus;		// 파워등록 상태(y/n)
	
	
	public Power() {
		
	}

	public Power(int powerNum, int acmNum, int payNum, Date startDate, Date endDate, String powerStatus) {
		super();
		this.powerNum = powerNum;
		this.acmNum = acmNum;
		this.payNum = payNum;
		this.startDate = startDate;
		this.endDate = endDate;
		this.powerStatus = powerStatus;
	}

	public int getPowerNum() {
		return powerNum;
	}

	public void setPowerNum(int powerNum) {
		this.powerNum = powerNum;
	}

	public int getAcmNum() {
		return acmNum;
	}

	public void setAcmNum(int acmNum) {
		this.acmNum = acmNum;
	}

	public int getPayNum() {
		return payNum;
	}

	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getPowerStatus() {
		return powerStatus;
	}

	public void setPowerStatus(String powerStatus) {
		this.powerStatus = powerStatus;
	}

	@Override
	public String toString() {
		return "Power [powerNum=" + powerNum + ", acmNum=" + acmNum + ", payNum=" + payNum + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", powerStatus=" + powerStatus + "]";
	}


}
