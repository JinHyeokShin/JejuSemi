package reply.model.vo;

import java.util.Date;

public class Reply {
	
	private int replyNum;			// 댓글 번호
	private int reviewNum;			// 후기 번호
	private int memNum;				// 회원 번호
	private String replyContent;	// 댓글 내용
	private Date replyDate;			// 댓글 날짜
	
	public Reply() {
		
	}

	public Reply(int replyNum, int reviewNum, int memNum, String replyContent, Date replyDate) {
		super();
		this.replyNum = replyNum;
		this.reviewNum = reviewNum;
		this.memNum = memNum;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
	}

	public int getReplyNum() {
		return replyNum;
	}

	public void setReplyNum(int replyNum) {
		this.replyNum = replyNum;
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

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public Date getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}

	@Override
	public String toString() {
		return "Reply [replyNum=" + replyNum + ", reviewNum=" + reviewNum + ", memNum=" + memNum + ", replyContent="
				+ replyContent + ", replyDate=" + replyDate + "]";
	}
	
	
	
	
	

}
