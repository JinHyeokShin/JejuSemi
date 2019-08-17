package accommodation.model.vo;

public class Acm {
	
	private int acmNum;				// 숙소 번호
	private String acmName;			// 숙소 이름
	private String acmOwner;		// 숙소 주인
	private String acmPhone;		// 숙소 전화번호
	private String acmAddress;		// 숙소 주소
	private String acmType;			// 숙소 타입(h:호텔 / r:리조트 / c:콘도 / g:게스트 / m:민박)
	private String acmDescript;		// 숙소 설명
	private String acmCoordX;		// 숙소 x좌표
	private String acmCoordY;		// 숙소 y좌표
	private String acmCity;			// 숙소 행정구역(제주시/서귀포시)
	private String acmPower;		// 숙소 파워등록 여부(y/n)
	
	public Acm() {}

	public Acm(int acmNum, String acmName, String acmOwner, String acmPhone, String acmAddress, String acmType,
			String acmDescript, String acmCoordX, String acmCoordY, String acmCity, String acmPower) {
		super();
		this.acmNum = acmNum;
		this.acmName = acmName;
		this.acmOwner = acmOwner;
		this.acmPhone = acmPhone;
		this.acmAddress = acmAddress;
		this.acmType = acmType;
		this.acmDescript = acmDescript;
		this.acmCoordX = acmCoordX;
		this.acmCoordY = acmCoordY;
		this.acmCity = acmCity;
		this.acmPower = acmPower;
	}

	public int getAcmNum() {
		return acmNum;
	}

	public void setAcmNum(int acmNum) {
		this.acmNum = acmNum;
	}

	public String getAcmName() {
		return acmName;
	}

	public void setAcmName(String acmName) {
		this.acmName = acmName;
	}

	public String getAcmOwner() {
		return acmOwner;
	}

	public void setAcmOwner(String acmOwner) {
		this.acmOwner = acmOwner;
	}

	public String getAcmPhone() {
		return acmPhone;
	}

	public void setAcmPhone(String acmPhone) {
		this.acmPhone = acmPhone;
	}

	public String getAcmAddress() {
		return acmAddress;
	}

	public void setAcmAddress(String acmAddress) {
		this.acmAddress = acmAddress;
	}

	public String getAcmType() {
		return acmType;
	}

	public void setAcmType(String acmType) {
		this.acmType = acmType;
	}

	public String getAcmDescript() {
		return acmDescript;
	}

	public void setAcmDescript(String acmDescript) {
		this.acmDescript = acmDescript;
	}

	public String getAcmCoordX() {
		return acmCoordX;
	}

	public void setAcmCoordX(String acmCoordX) {
		this.acmCoordX = acmCoordX;
	}

	public String getAcmCoordY() {
		return acmCoordY;
	}

	public void setAcmCoordY(String acmCoordY) {
		this.acmCoordY = acmCoordY;
	}

	public String getAcmCity() {
		return acmCity;
	}

	public void setAcmCity(String acmCity) {
		this.acmCity = acmCity;
	}

	public String getAcmPower() {
		return acmPower;
	}

	public void setAcmPower(String acmPower) {
		this.acmPower = acmPower;
	}

	@Override
	public String toString() {
		return "acm [acmNum=" + acmNum + ", acmName=" + acmName + ", acmOwner=" + acmOwner + ", acmPhone=" + acmPhone
				+ ", acmAddress=" + acmAddress + ", acmType=" + acmType + ", acmDescript=" + acmDescript
				+ ", acmCoordX=" + acmCoordX + ", acmCoordY=" + acmCoordY + ", acmCity=" + acmCity + ", acmPower="
				+ acmPower + "]";
	}

	
}
