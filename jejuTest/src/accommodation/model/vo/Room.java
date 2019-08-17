package accommodation.model.vo;

public class Room {
	
	private int roomNum;			// 방 번호
	private int acmNum;				// 숙소 번호
	private String roomName;		// 방 이름
	private int roomPrice;			// 가격(1박당)
	private int roomPax;			// 정원
	private String roomType;		// 방 종류 (s:싱글 / d:더블 / t:트리플(트윈) / o:도미토리)
	private String roomDescript;	// 방 설명
	
	
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
