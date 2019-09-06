package accommodation.model.vo;

import java.io.Serializable;

public class AcmImg implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2434013887610116030L;
	private int imgNum;
	private String imgPath;
	private int acmNum;
	private int status;
	
	public AcmImg() {
		
	}

	public AcmImg(int imgNum, String imgPath, int acmNum, int status) {
		super();
		this.imgNum = imgNum;
		this.imgPath = imgPath;
		this.acmNum = acmNum;
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

	public int getAcmNum() {
		return acmNum;
	}

	public void setAcmNum(int acmNum) {
		this.acmNum = acmNum;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "AcmImg [imgNum=" + imgNum + ", imgPath=" + imgPath + ", acmNum=" + acmNum + ", status=" + status + "]";
	}
	
}
