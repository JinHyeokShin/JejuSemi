package tourSpot.model.vo;

public class TourSpot {
	
	private int spotnum;			// 관광지 번호
	private String spotName;		// 관광지 이름
	private String spotCoordX;		// 관광지 x좌표
	private String spotCoordY;		// 관광지 y좌표
	private String spotAddress;		// 관광지 주소
	private String spotDescript;	// 관광지 설명
	private String spotHomepage;	// 관광지 홈페이지
	private String spotPhone;		// 관광지 연락처
	private String spotContent;		// 관광지 기타내용
	
	public TourSpot() {
		
	}

	public TourSpot(int spotnum, String spotName, String spotCoordX, String spotCoordY, String spotAddress,
			String spotDescript, String spotHomepage, String spotPhone, String spotContent) {
		super();
		this.spotnum = spotnum;
		this.spotName = spotName;
		this.spotCoordX = spotCoordX;
		this.spotCoordY = spotCoordY;
		this.spotAddress = spotAddress;
		this.spotDescript = spotDescript;
		this.spotHomepage = spotHomepage;
		this.spotPhone = spotPhone;
		this.spotContent = spotContent;
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

	public String getSpotHomepage() {
		return spotHomepage;
	}

	public void setSpotHomepage(String spotHomepage) {
		this.spotHomepage = spotHomepage;
	}

	public String getSpotPhone() {
		return spotPhone;
	}

	public void setSpotPhone(String spotPhone) {
		this.spotPhone = spotPhone;
	}

	public String getSpotContent() {
		return spotContent;
	}

	public void setSpotContent(String spotContent) {
		this.spotContent = spotContent;
	}

	@Override
	public String toString() {
		return "TourSpot [spotnum=" + spotnum + ", spotName=" + spotName + ", spotCoordX=" + spotCoordX
				+ ", spotCoordY=" + spotCoordY + ", spotAddress=" + spotAddress + ", spotDescript=" + spotDescript
				+ ", spotHomepage=" + spotHomepage + ", spotPhone=" + spotPhone + ", spotContent=" + spotContent + "]";
	}

	
	
	

}
