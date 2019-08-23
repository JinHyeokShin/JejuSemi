package tourSpot.model.vo;

public class TourSpot {
	
	private int spotnum;			// 관광지 번호
	private String spotName;		// 관광지 이름
	private String spotCoordX;		// 관광지 x좌표
	private String spotCoordY;		// 관광지 y좌표
	private String spotAddress;		// 관광지 주소
	private String spotDescript;	// 관광지 설명
	
	public TourSpot() {
		
	}

	public TourSpot(int spotnum, String spotName, String spotCoordX, String spotCoordY, String spotAddress,
			String spotDescript) {
		super();
		this.spotnum = spotnum;
		this.spotName = spotName;
		this.spotCoordX = spotCoordX;
		this.spotCoordY = spotCoordY;
		this.spotAddress = spotAddress;
		this.spotDescript = spotDescript;
	}

	public int getSpotnum() {
		return spotnum;
	}

	public void setSpotnum(int spotnum) {
		this.spotnum = spotnum;
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

	public String getSpotDescript() {
		return spotDescript;
	}

	public void setSpotDescript(String spotDescript) {
		this.spotDescript = spotDescript;
	}

	@Override
	public String toString() {
		return "TourSpot [spotnum=" + spotnum + ", spotName=" + spotName + ", spotCoordX=" + spotCoordX
				+ ", spotCoordY=" + spotCoordY + ", spotAddress=" + spotAddress + ", spotDescript=" + spotDescript
				+ "]";
	}

	
	

}
