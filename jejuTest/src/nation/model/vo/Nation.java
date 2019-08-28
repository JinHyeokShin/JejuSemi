package nation.model.vo;

public class Nation {
	
	private int nationCode;
	private String nationName;
	private String imgPath;
	
	public Nation() {
		
	}

	public Nation(int nationCode, String nationName, String imgPath) {
		super();
		this.nationCode = nationCode;
		this.nationName = nationName;
		this.imgPath = imgPath;
	}
	
	

	public Nation(int nationCode, String nationName) {
		super();
		this.nationCode = nationCode;
		this.nationName = nationName;
	}

	public int getNationCode() {
		return nationCode;
	}

	public void setNationCode(int nationCode) {
		this.nationCode = nationCode;
	}

	public String getNationName() {
		return nationName;
	}

	public void setNationName(String nationName) {
		this.nationName = nationName;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	@Override
	public String toString() {
		return "Nation [nationCode=" + nationCode + ", nationName=" + nationName + ", imgPath=" + imgPath + "]";
	}
	
	

}
