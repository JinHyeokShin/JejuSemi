package accommodation.model.vo;

public class RoomImg {
	
	private int imgNum;
	private String imgPath;
	private int roomNum;
	
	public RoomImg() {
		
	}

	public RoomImg(int imgNum, String imgPath, int roomNum) {
		super();
		this.imgNum = imgNum;
		this.imgPath = imgPath;
		this.roomNum = roomNum;
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

	public int getRoomNum() {
		return roomNum;
	}

	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}

	@Override
	public String toString() {
		return "RoomImg [imgNum=" + imgNum + ", imgPath=" + imgPath + ", roomNum=" + roomNum + "]";
	}
	
	
	
}
