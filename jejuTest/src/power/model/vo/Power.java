package power.model.vo;

public class Power {
	
	private int powerNum;		// 파워등록 번호
	private int acmNum;			// 숙소 번호
	private String payNum;			// 결제 번호
	private String startDate;		// 파워등록 시작일
	private String endDate;		// 파워등록 종료일
	private String powerStatus;	// 파워등록 상태(y/n)
	private int powerFlag;
	public Power() {
		
	}


	public Power(int acmNum, String payNum, int powerFlag) {
		super();
		this.acmNum = acmNum;
		this.payNum = payNum;
		this.powerFlag = powerFlag;
	}


	public Power(int powerNum, int acmNum, String payNum, String startDate, String endDate, String powerStatus,
			int powerFlag) {
		super();
		this.powerNum = powerNum;
		this.acmNum = acmNum;
		this.payNum = payNum;
		this.startDate = startDate;
		this.endDate = endDate;
		this.powerStatus = powerStatus;
		this.powerFlag = powerFlag;
	}


	public int getPowerFlag() {
		return powerFlag;
	}


	public void setPowerFlag(int powerFlag) {
		this.powerFlag = powerFlag;
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

	public String getPayNum() {
		return payNum;
	}

	public void setPayNum(String payNum) {
		this.payNum = payNum;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
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
