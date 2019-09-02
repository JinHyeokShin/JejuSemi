package review.model.vo;

import java.util.Date;

public class Review {
	
	private int rNum;				//페이징처리위한rNum
	private int reviewNum;			// 후기 번호
	private int memNum;				// 회원 번호
	private int acmNum;				// 숙소 번호
	private String memName;			// 작성자 이름
	private String acmName;			// 숙소 이름
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
	


	public Review(int rNum,int reviewNum, String memName, String acmName, int reviewScore, String reviewContent,
			Date reviewDate) {
		super();
		this.rNum=rNum;
		this.reviewNum = reviewNum;
		this.memName = memName;
		this.acmName = acmName;
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


	public int getrNum() {
		return rNum;
	}


	public void setrNum(int rNum) {
		this.rNum = rNum;
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


	@Override
	public String toString() {
		return "Review [rNum=" + rNum + ", reviewNum=" + reviewNum + ", memNum=" + memNum + ", acmNum=" + acmNum
				+ ", memName=" + memName + ", acmName=" + acmName + ", reviewScore=" + reviewScore + ", reviewContent="
				+ reviewContent + ", reviewDate=" + reviewDate + "]";
	}


	

}
