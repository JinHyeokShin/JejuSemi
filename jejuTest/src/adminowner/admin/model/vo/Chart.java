package adminowner.admin.model.vo;

public class Chart {
	private int month;
	private int price;
	
	public Chart() {
		
	}

	public Chart(int month, int price) {
		super();
		this.month = month;
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

	@Override
	public String toString() {
		return "Chart [month=" + month + ", price=" + price + "]";
	}
	
}
