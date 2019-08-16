package qna.model.vo;

import java.util.Date;

public class Qna {
	
	private int qndNum;
	private int memNum;
	private String qnaTitle;
	private String qnaContent;
	private Date qnaDate;
	private String answer;
	private Date answerDate;
	private String answerStatus;
	
	public Qna() {
		
	}

	public Qna(int qndNum, int memNum, String qnaTitle, String qnaContent, Date qnaDate, String answer, Date answerDate,
			String answerStatus) {
		super();
		this.qndNum = qndNum;
		this.memNum = memNum;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaDate = qnaDate;
		this.answer = answer;
		this.answerDate = answerDate;
		this.answerStatus = answerStatus;
	}

	public int getQndNum() {
		return qndNum;
	}

	public void setQndNum(int qndNum) {
		this.qndNum = qndNum;
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

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getAnswerDate() {
		return answerDate;
	}

	public void setAnswerDate(Date answerDate) {
		this.answerDate = answerDate;
	}

	public String getAnswerStatus() {
		return answerStatus;
	}

	public void setAnswerStatus(String answerStatus) {
		this.answerStatus = answerStatus;
	}

	@Override
	public String toString() {
		return "Qna [qndNum=" + qndNum + ", memNum=" + memNum + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent
				+ ", qnaDate=" + qnaDate + ", answer=" + answer + ", answerDate=" + answerDate + ", answerStatus="
				+ answerStatus + "]";
	}
	
	
}
