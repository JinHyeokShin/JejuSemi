package adminowner.admin.model.vo;

public class AdminIndex {
	private int uCount;
	private int oCount;
	private int pTotal;
	
	public AdminIndex() {
		
	}

	public AdminIndex(int uCount, int oCount, int pTotal) {
		super();
		this.uCount = uCount;
		this.oCount = oCount;
		this.pTotal = pTotal;
	}

	public int getuCount() {
		return uCount;
	}

	public void setuCount(int uCount) {
		this.uCount = uCount;
	}

	public int getoCount() {
		return oCount;
	}

	public void setoCount(int oCount) {
		this.oCount = oCount;
	}

	public int getpTotal() {
		return pTotal;
	}

	public void setpTotal(int pTotal) {
		this.pTotal = pTotal;
	}

	@Override
	public String toString() {
		return "AdminIndex [uCount=" + uCount + ", oCount=" + oCount + ", pTotal=" + pTotal + "]";
	}
	
}
