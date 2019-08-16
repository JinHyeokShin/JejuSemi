package accommodation.model.vo;

public class Acm {
	
	private int acmNum;
	private String acmName;
	private String acmOwner;
	private String acmPhone;
	private String acmAddress;
	private String acmType;
	private String acmDescript;
	private String acmCoordX;
	private String acmCoordY;
	private String acmCity;
	private String acmPower;
	
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
