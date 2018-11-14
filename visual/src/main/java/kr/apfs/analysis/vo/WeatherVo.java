package kr.apfs.analysis.vo;

public class WeatherVo {
	private String ymd;
	private String areaid;
	private String areaname;
	private String cropspeid;
	private String cronam;
	private String cropspename;
	private float dayavgta;
	private int daymaxta;
	private int dayminta;
	private int dayavgrhm;
	private int dayminrhm;
	private int daysumrn;
	private int dayavgws;
	private int daysumss;
	private int wrncount;
	private String wrncd;
	private String wrnnm;
	private String crtid;
	private String crtdt;
	public String getYmd() {
		return ymd;
	}
	public void setYmd(String ymd) {
		this.ymd = ymd;
	}
	public String getAreaid() {
		return areaid;
	}
	public void setAreaid(String areaid) {
		this.areaid = areaid;
	}
	public String getAreaname() {
		return areaname;
	}
	public void setAreaname(String areaname) {
		this.areaname = areaname;
	}
	public String getCropspeid() {
		return cropspeid;
	}
	public void setCropspeid(String cropspeid) {
		this.cropspeid = cropspeid;
	}
	public String getCronam() {
		return cronam;
	}
	public void setCronam(String cronam) {
		this.cronam = cronam;
	}
	public String getCropspename() {
		return cropspename;
	}
	public void setCropspename(String cropspename) {
		this.cropspename = cropspename;
	}
	public float getDayavgta() {
		return dayavgta;
	}
	public void setDayavgta(float dayavgta) {
		this.dayavgta = dayavgta;
	}
	public int getDaymaxta() {
		return daymaxta;
	}
	public void setDaymaxta(int daymaxta) {
		this.daymaxta = daymaxta;
	}
	public int getDayminta() {
		return dayminta;
	}
	public void setDayminta(int dayminta) {
		this.dayminta = dayminta;
	}
	public int getDayavgrhm() {
		return dayavgrhm;
	}
	public void setDayavgrhm(int dayavgrhm) {
		this.dayavgrhm = dayavgrhm;
	}
	public int getDayminrhm() {
		return dayminrhm;
	}
	public void setDayminrhm(int dayminrhm) {
		this.dayminrhm = dayminrhm;
	}
	public int getDaysumrn() {
		return daysumrn;
	}
	public void setDaysumrn(int daysumrn) {
		this.daysumrn = daysumrn;
	}
	public int getDayavgws() {
		return dayavgws;
	}
	public void setDayavgws(int dayavgws) {
		this.dayavgws = dayavgws;
	}
	public int getDaysumss() {
		return daysumss;
	}
	public void setDaysumss(int daysumss) {
		this.daysumss = daysumss;
	}
	public int getWrncount() {
		return wrncount;
	}
	public void setWrncount(int wrncount) {
		this.wrncount = wrncount;
	}
	public String getWrncd() {
		return wrncd;
	}
	public void setWrncd(String wrncd) {
		this.wrncd = wrncd;
	}
	public String getWrnnm() {
		switch(wrncd) {
		case "W2":
			wrnnm="강풍주의보";
			break;
		case "W3":
			wrnnm="강풍경보";
			break;
		case "R2":
			wrnnm="호우주의보";
			break;
		case "R3":
			wrnnm="호우경보";
			break;
		case "S2":
			wrnnm="대설주의보";
			break;
		case "S3":
			wrnnm="대설경보";
			break;
		case "H2":
			wrnnm="폭염주의보";
			break;
		case "H3":
			wrnnm="폭염주의보";
			break;
		case "D2":
			wrnnm="건조주의보";
			break;
		case "D3":
			wrnnm="건조경보";
			break;
		case "C2":
			wrnnm="한파주의보";
			break;
		case "C3":
			wrnnm="한파경보";
			break;
		case "T2":
			wrnnm="태풍주의보";
			break;
		case "T3":
			wrnnm="태풍경보";
			break;
		default :
			wrnnm="";
		}
		return wrnnm;
	}
	public void setWrnnm(String wrnnm) {
		this.wrnnm = wrnnm;
	}
	public String getCrtid() {
		return crtid;
	}
	public void setCrtid(String crtid) {
		this.crtid = crtid;
	}
	public String getCrtdt() {
		return crtdt;
	}
	public void setCrtdt(String crtdt) {
		this.crtdt = crtdt;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("WeatherVo [");
		if (ymd != null)
			builder.append("ymd=").append(ymd).append(", ");
		if (areaid != null)
			builder.append("areaid=").append(areaid).append(", ");
		if (areaname != null)
			builder.append("areaname=").append(areaname).append(", ");
		if (cropspeid != null)
			builder.append("cropspeid=").append(cropspeid).append(", ");
		if (cronam != null)
			builder.append("cronam=").append(cronam).append(", ");
		if (cropspename != null)
			builder.append("cropspename=").append(cropspename).append(", ");
		builder.append("dayavgta=").append(dayavgta).append(", daymaxta=").append(daymaxta).append(", dayminta=")
				.append(dayminta).append(", dayavgrhm=").append(dayavgrhm).append(", dayminrhm=").append(dayminrhm)
				.append(", daysumrn=").append(daysumrn).append(", dayavgws=").append(dayavgws).append(", daysumss=")
				.append(daysumss).append(", ").append(wrncount).append(", ");
		if (wrncd != null)
			builder.append("wrncd=").append(wrncd).append(", ");
		if (wrnnm != null)
			builder.append("wrnnm=").append(wrnnm).append(", ");
		if (crtid != null)
			builder.append("crtid=").append(crtid).append(", ");
		if (crtdt != null)
			builder.append("crtdt=").append(crtdt);
		builder.append("]");
		return builder.toString();
	}
	
	

}
