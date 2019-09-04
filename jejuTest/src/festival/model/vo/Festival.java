package festival.model.vo;

public class Festival {
	
	private int festivalNum;
	private String festivalName;
	private String festivalDescript;
	private String festivalPlan;
	
	public Festival() {
		
	}

	public Festival(int festivalNum, String festivalName, String festivalDescript, String festivalPlan) {
		super();
		this.festivalNum = festivalNum;
		this.festivalName = festivalName;
		this.festivalDescript = festivalDescript;
		this.festivalPlan = festivalPlan;
	}

	public int getFestivalNum() {
		return festivalNum;
	}

	public void setFestivalNum(int festivalNum) {
		this.festivalNum = festivalNum;
	}

	public String getFestivalName() {
		return festivalName;
	}

	public void setFestivalName(String festivalName) {
		this.festivalName = festivalName;
	}

	public String getFestivalDescript() {
		return festivalDescript;
	}

	public void setFestivalDescript(String festivalDescript) {
		this.festivalDescript = festivalDescript;
	}

	public String getFestivalPlan() {
		return festivalPlan;
	}

	public void setFestivalPlan(String festivalPlan) {
		this.festivalPlan = festivalPlan;
	}

	@Override
	public String toString() {
		return "Festival [festivalNum=" + festivalNum + ", festivalName=" + festivalName + ", festivalDescript="
				+ festivalDescript + ", festivalPlan=" + festivalPlan + "]";
	}

	


}
