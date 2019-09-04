package festival.model.vo;

public class FestivalImg {
	
	private int festivalImgNum;
	private String festivalImgPath;
	private int festivalNum;
	
	public FestivalImg() {
		
	}

	public FestivalImg(int festivalImgNum, String festivalImgPath, int festivalNum) {
		super();
		this.festivalImgNum = festivalImgNum;
		this.festivalImgPath = festivalImgPath;
		this.festivalNum = festivalNum;
	}

	public int getFestivalImgNum() {
		return festivalImgNum;
	}

	public void setFestivalImgNum(int festivalImgNum) {
		this.festivalImgNum = festivalImgNum;
	}

	public String getFestivalImgPath() {
		return festivalImgPath;
	}

	public void setFestivalImgPath(String festivalImgPath) {
		this.festivalImgPath = festivalImgPath;
	}

	public int getFestivalNum() {
		return festivalNum;
	}

	public void setFestivalNum(int festivalNum) {
		this.festivalNum = festivalNum;
	}

	@Override
	public String toString() {
		return "FestivalImg [festivalImgNum=" + festivalImgNum + ", festivalImgPath=" + festivalImgPath
				+ ", festivalNum=" + festivalNum + "]";
	}
	
	
}
