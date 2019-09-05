package adminowner.admin.model.vo;


public class Notice {
	private int nNum;
	private String nTitle;
	private String nContent;
	private String nDate;
	private String nModifyDate;
	private String nStatus;
	public Notice() {
		
	}
	public Notice(int nNum, String nTitle, String nContent, String nDate, String nModifyDate, String nStatus) {
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
	public String getnDate() {
		return nDate;
	}
	public void setnDate(String nDate) {
		this.nDate = nDate;
	}
	public String getnModifyDate() {
		return nModifyDate;
	}
	public void setnModifyDate(String nModifyDate) {
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
