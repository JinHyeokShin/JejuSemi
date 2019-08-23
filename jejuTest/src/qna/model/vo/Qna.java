package qna.model.vo;

import java.util.Date;

public class Qna {
	
	private int qnaNum;				// 문의 번호
	private int memNum;				// 회원 번호
	private String qnaTitle;		// 문의 제목
	private String qnaContent;		// 문의 내용
	private Date qnaDate;			// 문의 날짜
	private String qnaStatus;	// 답변 상태(y/n)
	
	public Qna() {
		
	}

	public Qna(int qnaNum, int memNum, String qnaTitle, String qnaContent, Date qnaDate, String qnaStatus) {
		super();
		this.qnaNum = qnaNum;
		this.memNum = memNum;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaDate = qnaDate;
		this.qnaStatus = qnaStatus;
	}

	public int getQnaNum() {
		return qnaNum;
	}

	public void setQnaNum(int qnaNum) {
		this.qnaNum = qnaNum;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public Date getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}

	public String getQnaStatus() {
		return qnaStatus;
	}

	public void setQnaStatus(String qnaStatus) {
		this.qnaStatus = qnaStatus;
	}

	@Override
	public String toString() {
		return "Qna [qnaNum=" + qnaNum + ", memNum=" + memNum + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent
				+ ", qnaDate=" + qnaDate + ", qnaStatus=" + qnaStatus + "]";
	}

}
