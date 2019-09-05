package adminowner.admin.model.vo;

import java.sql.Date;

public class Notice {
	private int nNum;
	private String nTitle;
	private String nContent;
	private Date nDate;
	private Date nModifyDate;
	private String nStatus;
	public Notice() {
		
	}
	public Notice(int nNum, String nTitle, String nContent, Date nDate, Date nModifyDate, String nStatus) {
		super();
		this.nNum = nNum;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nDate = nDate;
		this.nModifyDate = nModifyDate;
		this.nStatus = nStatus;
	}
	
	public Notice(int nNum, String nTitle, String nContent) {
		super();
		this.nNum = nNum;
		this.nTitle = nTitle;
		this.nContent = nContent;
	}
	public int getnNum() {
		return nNum;
	}
	public void setnNum(int nNum) {
		this.nNum = nNum;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public Date getnDate() {
		return nDate;
	}
	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}
	public Date getnModifyDate() {
		return nModifyDate;
	}
	public void setnModifyDate(Date nModifyDate) {
		this.nModifyDate = nModifyDate;
	}
	public String getnStatus() {
		return nStatus;
	}
	public void setnStatus(String nStatus) {
		this.nStatus = nStatus;
	}
	@Override
	public String toString() {
		return "Notice [nNum=" + nNum + ", nTitle=" + nTitle + ", nContent=" + nContent + ", nDate=" + nDate
				+ ", nModifyDate=" + nModifyDate + ", nStatus=" + nStatus + "]";
	}
}
