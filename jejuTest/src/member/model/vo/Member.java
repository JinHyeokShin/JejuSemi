package member.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Member implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7519517155433097312L;
	
	private int memNum;			// 회원번호
	private String memId;		// 회원아이디(이메일)
	private String memPwd;		// 회원 비밀번호
	private String memName;		// 회원 이름
	private String memGender;	// 회원 성별
	private String memPhone;	// 회원 전화번호
	private int nationCode;		// 회원 국적(국가코드)
	private int memPoint;		// 포인트
	private String memType;		// 회원 분류(관리자, 오너, 회원)
	private String memStatus;	// 회원상태(y/n)
	private Date enrollDate;	// 가입일
	private Date outDate;		// 탈퇴일
	private int noShow;			// 노쇼 횟수(누적3회시 ban)
	
	public Member() {}

	public Member(int memNum, String memId, String memPwd, String memName, String memGender, String memPhone,
			int nationCode, int memPoint, String memType, String memStatus, Date enrollDate, Date outDate, int noShow) {
		super();
		this.memNum = memNum;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memGender = memGender;
		this.memPhone = memPhone;
		this.nationCode = nationCode;
		this.memPoint = memPoint;
		this.memType = memType;
		this.memStatus = memStatus;
		this.enrollDate = enrollDate;
		this.outDate = outDate;
		this.noShow = noShow;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemGender() {
		return memGender;
	}

	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public int getNationCode() {
		return nationCode;
	}

	public void setNationCode(int nationCode) {
		this.nationCode = nationCode;
	}

	public int getMemPoint() {
		return memPoint;
	}

	public void setMemPoint(int memPoint) {
		this.memPoint = memPoint;
	}

	public String getMemType() {
		return memType;
	}

	public void setMemType(String memType) {
		this.memType = memType;
	}

	public String getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(String memStatus) {
		this.memStatus = memStatus;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getOutDate() {
		return outDate;
	}

	public void setOutDate(Date outDate) {
		this.outDate = outDate;
	}

	public int getNoShow() {
		return noShow;
	}

	public void setNoShow(int noShow) {
		this.noShow = noShow;
	}

	@Override
	public String toString() {
		return "Member [memNum=" + memNum + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memGender=" + memGender + ", memPhone=" + memPhone + ", nationCode=" + nationCode + ", memPoint="
				+ memPoint + ", memType=" + memType + ", memStatus=" + memStatus + ", enrollDate=" + enrollDate
				+ ", outDate=" + outDate + ", noShow=" + noShow + "]";
	}

	
}