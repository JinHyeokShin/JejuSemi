package member.model.vo;

import java.util.Date;

public class WishList {
	
	private int memNum;		// 찜한 회원 번호
	private int acmNum;		// 찜한 숙소 번호
	private Date wishDate;	// 찜한 날짜
	
	public WishList() {
		
	}

	public WishList(int memNum, int acmNum, Date wishDate) {
		super();
		this.memNum = memNum;
		this.acmNum = acmNum;
		this.wishDate = wishDate;
	}
	
	

	public WishList(int memNum, int acmNum) {
		super();
		this.memNum = memNum;
		this.acmNum = acmNum;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public int getAcmNum() {
		return acmNum;
	}

	public void setAcmNum(int acmNum) {
		this.acmNum = acmNum;
	}

	public Date getWishDate() {
		return wishDate;
	}

	public void setWishDate(Date wishDate) {
		this.wishDate = wishDate;
	}

	@Override
	public String toString() {
		return "WishList [memNum=" + memNum + ", acmNum=" + acmNum + ", wishDate=" + wishDate + ", getMemNum()="
				+ getMemNum() + ", getAcmNum()=" + getAcmNum() + ", getWishDate()=" + getWishDate() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	
	
}
