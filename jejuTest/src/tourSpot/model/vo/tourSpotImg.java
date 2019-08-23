package tourSpot.model.vo;

public class tourSpotImg {
	
	private int imgNum;
	private String imgPath;
	private int spotNum;
	private int status;
	
	public tourSpotImg() {
		
	}

	public tourSpotImg(int imgNum, String imgPath, int spotNum, int status) {
		super();
		this.imgNum = imgNum;
		this.imgPath = imgPath;
		this.spotNum = spotNum;
		this.status = status;
	}

	public int getImgNum() {
		return imgNum;
	}

	public void setImgNum(int imgNum) {
		this.imgNum = imgNum;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public int getSpotNum() {
		return spotNum;
	}

	public void setSpotNum(int spotNum) {
		this.spotNum = spotNum;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "tourSpotImg [imgNum=" + imgNum + ", imgPath=" + imgPath + ", spotNum=" + spotNum + ", status=" + status
				+ "]";
	}
	

}
