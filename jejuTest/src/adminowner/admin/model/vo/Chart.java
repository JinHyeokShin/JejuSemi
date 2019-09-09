package adminowner.admin.model.vo;

public class Chart {
	private int month;
	private int price;
	private String type;
	
	public Chart() {
		
	}

	public Chart(int month, int price) {
		super();
		this.month = month;
		this.price = price;
	}

	public Chart(String type,int price) {
		super();
		this.type = type;
		this.price = price;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	

	
	
}
