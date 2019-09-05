package review.model.vo;

import java.util.Date;

public class Review {
	
	private int reviewNum;			// 후기 번호
	private int memNum;				// 회원 번호
	private int acmNum;				// 숙소 번호
	private String reservNum;		// 예약 번호	*FK 아님*
	private String memName;			// 작성자 이름
	private String acmName;			// 숙소 이름
	private int reviewScore;		// 숙소 별점
	private String reviewTitle;		// 후기 제목
	private String reviewContent;	// 후기 내용
	private Date reviewDate;		// 후기 작성 날짜
	
	
	
	public Review() {
		
	}
	
	

	public Review(int reviewNum, int memNum, int acmNum, int reviewScore, String reviewContent, Date reviewDate) {
		super();
		this.reviewNum = reviewNum;
		this.memNum = memNum;
		this.acmNum = acmNum;
		this.reviewScore = reviewScore;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
	}
	

	
	
	public Review(int reviewNum, int memNum, int acmNum, String reservNum, int reviewScore, String reviewTitle,
			String reviewContent, Date reviewDate) {
		super();
		this.reviewNum = reviewNum;
		this.memNum = memNum;
		this.acmNum = acmNum;
		this.reservNum = reservNum;
		this.reviewScore = reviewScore;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
	}



	//관리자 리뷰조회
	public Review(int reviewNum, String memName, String acmName, String reservNum, int reviewScore, String reviewTitle,
			String reviewContent, Date reviewDate) {
		super();
		this.reviewNum = reviewNum;
		this.reservNum = reservNum;
		this.memName = memName;
		this.acmName = acmName;
		this.reviewScore = reviewScore;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
	}



	public Review(int memNum, int acmNum, String reservNum, int reviewScore, String reviewTitle, String reviewContent) {
		super();
		this.memNum = memNum;
		this.acmNum = acmNum;
		this.reservNum = reservNum;
		this.reviewScore = reviewScore;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
	}


	public Review(int memNum, int acmNum, int reviewScore, String reviewTitle, String reviewContent) {
		super();
		this.memNum = memNum;
		this.acmNum = acmNum;
		this.reviewScore = reviewScore;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
	}


	public int getReviewNum() {
		return reviewNum;
	}


	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
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


	public int getReviewScore() {
		return reviewScore;
	}


	public void setReviewScore(int reviewScore) {
		this.reviewScore = reviewScore;
	}


	public String getReviewContent() {
		return reviewContent;
	}


	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}


	public Date getReviewDate() {
		return reviewDate;
	}


	public void setReviewDate(Date	 reviewDate) {
		this.reviewDate = reviewDate;
	}




	public String getMemName() {
		return memName;
	}


	public void setMemName(String memName) {
		this.memName = memName;
	}


	public String getAcmName() {
		return acmName;
	}


	public void setAcmName(String acmName) {
		this.acmName = acmName;
	}
	
	
	

	public String getReviewTitle() {
		return reviewTitle;
	}


	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	
	

	public String getReservNum() {
		return reservNum;
	}


	public void setReservNum(String reservNum) {
		this.reservNum = reservNum;
	}


	@Override
	public String toString() {
		return "Review [reviewNum=" + reviewNum + ", memNum=" + memNum + ", acmNum=" + acmNum
				+ ", memName=" + memName + ", acmName=" + acmName + ", reviewScore=" + reviewScore + ", reviewContent="
				+ reviewContent + ", reviewDate=" + reviewDate + "]";
	}


	

}
