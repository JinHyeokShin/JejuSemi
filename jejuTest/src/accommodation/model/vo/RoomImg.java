package accommodation.model.vo;

public class RoomImg {
	
	private int imgNum;
	private String imgPath;
	private int roomNum;
	private int status;
	
	public RoomImg() {
		
	}
	
	public RoomImg(int imgNum, String imgPath, int roomNum, int status) {
		super();
		this.imgNum = imgNum;
		this.imgPath = imgPath;
		this.roomNum = roomNum;
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

	public int getRoomNum() {
		return roomNum;
	}

	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "RoomImg [imgNum=" + imgNum + ", imgPath=" + imgPath + ", roomNum=" + roomNum + ", status=" + status
				+ "]";
	}
}
