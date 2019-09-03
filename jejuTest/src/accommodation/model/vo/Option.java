package accommodation.model.vo;

import java.util.Arrays;

public class Option {
	
	private String[] arrType;
	private String[] arrDist;
	private String[] arrStar;
	private String[] arrPrice;
	
	public Option() {
		
	}

	public Option(String[] arrType, String[] arrDist, String[] arrStar, String[] arrPrice) {
		super();
		this.arrType = arrType;
		this.arrDist = arrDist;
		this.arrStar = arrStar;
		this.arrPrice = arrPrice;
	}

	public String[] getArrType() {
		return arrType;
	}

	public void setArrType(String[] arrType) {
		this.arrType = arrType;
	}

	public String[] getArrDist() {
		return arrDist;
	}

	public void setArrDist(String[] arrDist) {
		this.arrDist = arrDist;
	}

	public String[] getArrStar() {
		return arrStar;
	}

	public void setArrStar(String[] arrStar) {
		this.arrStar = arrStar;
	}

	public String[] getArrPrice() {
		return arrPrice;
	}

	public void setArrPrice(String[] arrPrice) {
		this.arrPrice = arrPrice;
	}

	@Override
	public String toString() {
		return "Option [arrType=" + Arrays.toString(arrType) + ", arrDist=" + Arrays.toString(arrDist) + ", arrStar="
				+ Arrays.toString(arrStar) + ", arrPrice=" + Arrays.toString(arrPrice) + "]";
	}
	
	
	
	
}
