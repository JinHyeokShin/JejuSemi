package accommodation.model.vo;

public class Room {
	
	private int roomNum;
	private int acmNum;
	private String roomName;
	private int roomPrice;
	private int roomPax;
	private String roomType;
	private String roomDescript;
	
	
	public Room() {
		
	}


	public Room(int roomNum, int acmNum, String roomName, int roomPrice, int roomPax, String roomType,
			String roomDescript) {
		super();
		this.roomNum = roomNum;
		this.acmNum = acmNum;
		this.roomName = roomName;
		this.roomPrice = roomPrice;
		this.roomPax = roomPax;
		this.roomType = roomType;
		this.roomDescript = roomDescript;
	}


	public int getRoomNum() {
		return roomNum;
	}


	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}


	public int getAcmNum() {
		return acmNum;
	}


	public void setAcmNum(int acmNum) {
		this.acmNum = acmNum;
	}


	public String getRoomName() {
		return roomName;
	}


	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}


	public int getRoomPrice() {
		return roomPrice;
	}


	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}


	public int getRoomPax() {
		return roomPax;
	}


	public void setRoomPax(int roomPax) {
		this.roomPax = roomPax;
	}


	public String getRoomType() {
		return roomType;
	}


	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}


	public String getRoomDescript() {
		return roomDescript;
	}


	public void setRoomDescript(String roomDescript) {
		this.roomDescript = roomDescript;
	}


	@Override
	public String toString() {
		return "Room [roomNum=" + roomNum + ", acmNum=" + acmNum + ", roomName=" + roomName + ", roomPrice=" + roomPrice
				+ ", roomPax=" + roomPax + ", roomType=" + roomType + ", roomDescript=" + roomDescript + "]";
	}
	
	
	

}
