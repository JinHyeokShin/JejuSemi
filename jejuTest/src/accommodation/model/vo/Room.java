package accommodation.model.vo;

public class Room {
	
	private int roomNum;			// 방 번호
	private int acmNum;				// 숙소 번호
	private String roomName;		// 방 이름
	private int roomPrice;			// 가격(1박당)
	private int roomPax;			// 정원
	private String roomDescriptA;	// 방 설명A
	private String roomDescriptB;	// 방 설명B
	private String roomSmoke;		// 흡연 가능 방
	
	
	public Room() {
		
	}


	public Room(int roomNum, int acmNum, String roomName, int roomPrice, int roomPax, String roomDescriptA,
			String roomDescriptB, String roomSmoke) {
		super();
		this.roomNum = roomNum;
		this.acmNum = acmNum;
		this.roomName = roomName;
		this.roomPrice = roomPrice;
		this.roomPax = roomPax;
		this.roomDescriptA = roomDescriptA;
		this.roomDescriptB = roomDescriptB;
		this.roomSmoke = roomSmoke;
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


	public String getRoomDescriptA() {
		return roomDescriptA;
	}


	public void setRoomDescriptA(String roomDescriptA) {
		this.roomDescriptA = roomDescriptA;
	}


	public String getRoomDescriptB() {
		return roomDescriptB;
	}


	public void setRoomDescriptB(String roomDescriptB) {
		this.roomDescriptB = roomDescriptB;
	}


	public String getRoomSmoke() {
		return roomSmoke;
	}


	public void setRoomSmoke(String roomSmoke) {
		this.roomSmoke = roomSmoke;
	}


	@Override
	public String toString() {
		return "Room [roomNum=" + roomNum + ", acmNum=" + acmNum + ", roomName=" + roomName + ", roomPrice=" + roomPrice
				+ ", roomPax=" + roomPax + ", roomDescriptA=" + roomDescriptA + ", roomDescriptB=" + roomDescriptB
				+ ", roomSmoke=" + roomSmoke + "]";
	}


	
	

}
