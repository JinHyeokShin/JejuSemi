package accommodation.model.vo;

import java.util.Date;

public class Search {	// 검색 값 넘길 때 사용할 객체
	
	private Date searchCheckInDate;		// 체크인
	private Date searchCheckOutDate;	// 체크아웃
	private int adult;					// 성인 인원수
	private int child;					// 어린이 인원수
	
	public Search() {
		
	}

	public Search(Date searchCheckInDate, Date searchCheckOutDate, int adult, int child) {
		super();
		this.searchCheckInDate = searchCheckInDate;
		this.searchCheckOutDate = searchCheckOutDate;
		this.adult = adult;
		this.child = child;
	}

	public Date getSearchCheckInDate() {
		return searchCheckInDate;
	}

	public void setSearchCheckInDate(Date searchCheckInDate) {
		this.searchCheckInDate = searchCheckInDate;
	}

	public Date getSearchCheckOutDate() {
		return searchCheckOutDate;
	}

	public void setSearchCheckOutDate(Date searchCheckOutDate) {
		this.searchCheckOutDate = searchCheckOutDate;
	}

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getChild() {
		return child;
	}

	public void setChild(int child) {
		this.child = child;
	}

	@Override
	public String toString() {
		return "Search [searchCheckInDate=" + searchCheckInDate + ", searchCheckOutDate=" + searchCheckOutDate
				+ ", adult=" + adult + ", child=" + child + "]";
	}
	

}
