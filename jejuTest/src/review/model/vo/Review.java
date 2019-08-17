package review.model.vo;

import java.util.Date;

public class Review {
	
	private int reviewNum;			// 후기 번호
	private int memNum;				// 회원 번호
	private int acmNum;				// 숙소 번호
	private int reviewScore;		// 숙소 별점
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


	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}


	@Override
	public String toString() {
		return "review [reviewNum=" + reviewNum + ", memNum=" + memNum + ", acmNum=" + acmNum + ", reviewScore="
				+ reviewScore + ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", getReviewNum()="
				+ getReviewNum() + ", getMemNum()=" + getMemNum() + ", getAcmNum()=" + getAcmNum()
				+ ", getReviewScore()=" + getReviewScore() + ", getReviewContent()=" + getReviewContent()
				+ ", getReviewDate()=" + getReviewDate() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	

}
