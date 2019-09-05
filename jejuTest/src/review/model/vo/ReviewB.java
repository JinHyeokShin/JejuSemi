package review.model.vo;

import java.util.Date;

public class ReviewB {	// 숙소 페이지에서 리뷰 담아와서 뿌려줄 전용 객체
	
	private int reviewNum;			// 후기 번호
	private String memName;			// 작성자 이름
	private int acmNum;				// 숙소 번호
	private String reservNum;		// 예약 번호	*FK 아님*
	private String imgPath;			// 국기 이미지 경로
	private int reviewScore;		// 숙소 별점
	private String reviewTitle;		// 후기 제목
	private String reviewContent;	// 후기 내용
	private Date reviewDate;		// 후기 작성 날짜
	
	
	
	public ReviewB() {
		
	}



	public ReviewB(int reviewNum, String memName, int acmNum, String reservNum, String imgPath, int reviewScore,
			String reviewTitle, String reviewContent, Date reviewDate) {
		super();
		this.reviewNum = reviewNum;
		this.memName = memName;
		this.acmNum = acmNum;
		this.reservNum = reservNum;
		this.imgPath = imgPath;
		this.reviewScore = reviewScore;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
	}



	public int getReviewNum() {
		return reviewNum;
	}



	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}



	public String getMemName() {
		return memName;
	}



	public void setMemName(String memName) {
		this.memName = memName;
	}



	public int getAcmNum() {
		return acmNum;
	}



	public void setAcmNum(int acmNum) {
		this.acmNum = acmNum;
	}



	public String getReservNum() {
		return reservNum;
	}



	public void setReservNum(String reservNum) {
		this.reservNum = reservNum;
	}



	public String getImgPath() {
		return imgPath;
	}



	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}



	public int getReviewScore() {
		return reviewScore;
	}



	public void setReviewScore(int reviewScore) {
		this.reviewScore = reviewScore;
	}



	public String getReviewTitle() {
		return reviewTitle;
	}



	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
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
		return "ReviewB [reviewNum=" + reviewNum + ", memName=" + memName + ", acmNum=" + acmNum + ", reservNum="
				+ reservNum + ", imgPath=" + imgPath + ", reviewScore=" + reviewScore + ", reviewTitle=" + reviewTitle
				+ ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + "]";
	}
	
	
	
	
}
