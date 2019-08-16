package tourSpot.model.vo;

public class TourSpot {
	
	private int spotCode;
	private String spotName;
	private String spotCoordX;
	private String spotCoordY;
	private String spotAddress;
	private String spotImgPath;
	private String spotDescript;
	
	public TourSpot() {
		
	}

	public TourSpot(int spotCode, String spotName, String spotCoordX, String spotCoordY, String spotAddress,
			String spotImgPath, String spotDescript) {
		super();
		this.spotCode = spotCode;
		this.spotName = spotName;
		this.spotCoordX = spotCoordX;
		this.spotCoordY = spotCoordY;
		this.spotAddress = spotAddress;
		this.spotImgPath = spotImgPath;
		this.spotDescript = spotDescript;
	}

	public int getSpotCode() {
		return spotCode;
	}

	public void setSpotCode(int spotCode) {
		this.spotCode = spotCode;
	}

	public String getSpotName() {
		return spotName;
	}

	public void setSpotName(String spotName) {
		this.spotName = spotName;
	}

	public String getSpotCoordX() {
		return spotCoordX;
	}

	public void setSpotCoordX(String spotCoordX) {
		this.spotCoordX = spotCoordX;
	}

	public String getSpotCoordY() {
		return spotCoordY;
	}

	public void setSpotCoordY(String spotCoordY) {
		this.spotCoordY = spotCoordY;
	}

	public String getSpotAddress() {
		return spotAddress;
	}

	public void setSpotAddress(String spotAddress) {
		this.spotAddress = spotAddress;
	}

	public String getSpotImgPath() {
		return spotImgPath;
	}

	public void setSpotImgPath(String spotImgPath) {
		this.spotImgPath = spotImgPath;
	}

	public String getSpotDescript() {
		return spotDescript;
	}

	public void setSpotDescript(String spotDescript) {
		this.spotDescript = spotDescript;
	}

	@Override
	public String toString() {
		return "TourSpot [spotCode=" + spotCode + ", spotName=" + spotName + ", spotCoordX=" + spotCoordX
				+ ", spotCoordY=" + spotCoordY + ", spotAddress=" + spotAddress + ", spotImgPath=" + spotImgPath
				+ ", spotDescript=" + spotDescript + ", getSpotCode()=" + getSpotCode() + ", getSpotName()="
				+ getSpotName() + ", getSpotCoordX()=" + getSpotCoordX() + ", getSpotCoordY()=" + getSpotCoordY()
				+ ", getSpotAddress()=" + getSpotAddress() + ", getSpotImgPath()=" + getSpotImgPath()
				+ ", getSpotDescript()=" + getSpotDescript() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	

}
