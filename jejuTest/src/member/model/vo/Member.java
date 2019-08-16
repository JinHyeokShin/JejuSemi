package member.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Member implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7519517155433097312L;
	
	private int memNum;
	private String memId;
	private String memPwd;
	private String memName;
	private String memGender;
	private String memPhone;
	private int nationCode;
	private Date memJoin;
	private Date memOut;
	private int memPoint;
	private int memNoShow;
	private String memType;
	private String memStatus;
	
	public Member() {}

	public Member(int memNum, String memId, String memPwd, String memName, String memGender, String memPhone,
			int nationCode, Date memJoin, Date memOut, int memPoint, int memNoShow, String memType, String memStatus) {
		super();
		this.memNum = memNum;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memGender = memGender;
		this.memPhone = memPhone;
		this.nationCode = nationCode;
		this.memJoin = memJoin;
		this.memOut = memOut;
		this.memPoint = memPoint;
		this.memNoShow = memNoShow;
		this.memType = memType;
		this.memStatus = memStatus;
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

	public Date getMemJoin() {
		return memJoin;
	}

	public void setMemJoin(Date memJoin) {
		this.memJoin = memJoin;
	}

	public Date getMemOut() {
		return memOut;
	}

	public void setMemOut(Date memOut) {
		this.memOut = memOut;
	}

	public int getMemPoint() {
		return memPoint;
	}

	public void setMemPoint(int memPoint) {
		this.memPoint = memPoint;
	}

	public int getMemNoShow() {
		return memNoShow;
	}

	public void setMemNoShow(int memNoShow) {
		this.memNoShow = memNoShow;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Member [memNum=" + memNum + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memGender=" + memGender + ", memPhone=" + memPhone + ", nationCode=" + nationCode + ", memJoin="
				+ memJoin + ", memOut=" + memOut + ", memPoint=" + memPoint + ", memNoShow=" + memNoShow + ", memType="
				+ memType + ", memStatus=" + memStatus + ", getMemNum()=" + getMemNum() + ", getMemId()=" + getMemId()
				+ ", getMemPwd()=" + getMemPwd() + ", getMemName()=" + getMemName() + ", getMemGender()="
				+ getMemGender() + ", getMemPhone()=" + getMemPhone() + ", getNationCode()=" + getNationCode()
				+ ", getMemJoin()=" + getMemJoin() + ", getMemOut()=" + getMemOut() + ", getMemPoint()=" + getMemPoint()
				+ ", getMemNoShow()=" + getMemNoShow() + ", getMemType()=" + getMemType() + ", getMemStatus()="
				+ getMemStatus() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

	
	
}
