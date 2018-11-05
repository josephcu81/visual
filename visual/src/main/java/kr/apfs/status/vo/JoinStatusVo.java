package kr.apfs.status.vo;

import java.sql.Date;

public class JoinStatusVo {
	private String cntrctYy;
	private String sidocd;
	private String insrcl;
	private String sidonm;
	private long mcnt;
	private long wcnt;
	private long mwall;
	private long ag30;
	private long ag40;
	private long ag50;
	private long ag60;
	private long ag70;
	private long agall;
	private long gicnt;
	private long bicnt;
	private long gball;
	private long ar2m;
	private long ar24;
	private long ar46;
	private long ar68;
	private long ar810;
	private long ar1015;
	private long ar15e;
	private long arall;
	private String crtid;
	private String crtdt;

	public String getCntrctYy() {
		return cntrctYy;
	}

	public void setCntrctYy(String cntrctYy) {
		this.cntrctYy = cntrctYy;
	}

	public String getSidocd() {
		return sidocd;
	}

	public void setSidocd(String sidocd) {
		this.sidocd = sidocd;
	}

	public String getInsrcl() {
		return insrcl;
	}

	public void setInsrcl(String insrcl) {
		this.insrcl = insrcl;
	}

	public String getSidonm() {
		return sidonm;
	}

	public void setSidonm(String sidonm) {
		this.sidonm = sidonm;
	}

	public long getMcnt() {
		return mcnt;
	}

	public void setMcnt(long mcnt) {
		this.mcnt = mcnt;
	}

	public long getWcnt() {
		return wcnt;
	}

	public void setWcnt(long wcnt) {
		this.wcnt = wcnt;
	}

	public long getMwall() {
		return mwall;
	}

	public void setMwall(long mwall) {
		this.mwall = mwall;
	}

	public long getAg30() {
		return ag30;
	}

	public void setAg30(long ag30) {
		this.ag30 = ag30;
	}

	public long getAg40() {
		return ag40;
	}

	public void setAg40(long ag40) {
		this.ag40 = ag40;
	}

	public long getAg50() {
		return ag50;
	}

	public void setAg50(long ag50) {
		this.ag50 = ag50;
	}

	public long getAg60() {
		return ag60;
	}

	public void setAg60(long ag60) {
		this.ag60 = ag60;
	}

	public long getAg70() {
		return ag70;
	}

	public void setAg70(long ag70) {
		this.ag70 = ag70;
	}

	public long getAgall() {
		return agall;
	}

	public void setAgall(long agall) {
		this.agall = agall;
	}

	public long getGicnt() {
		return gicnt;
	}

	public void setGicnt(long gicnt) {
		this.gicnt = gicnt;
	}

	public long getBicnt() {
		return bicnt;
	}

	public void setBicnt(long bicnt) {
		this.bicnt = bicnt;
	}

	public long getGball() {
		return gball;
	}

	public void setGball(long gball) {
		this.gball = gball;
	}

	public long getAr2m() {
		return ar2m;
	}

	public void setAr2m(long ar2m) {
		this.ar2m = ar2m;
	}

	public long getAr24() {
		return ar24;
	}

	public void setAr24(long ar24) {
		this.ar24 = ar24;
	}

	public long getAr46() {
		return ar46;
	}

	public void setAr46(long ar46) {
		this.ar46 = ar46;
	}

	public long getAr68() {
		return ar68;
	}

	public void setAr68(long ar68) {
		this.ar68 = ar68;
	}

	public long getAr810() {
		return ar810;
	}

	public void setAr810(long ar810) {
		this.ar810 = ar810;
	}

	public long getAr1015() {
		return ar1015;
	}

	public void setAr1015(long ar1015) {
		this.ar1015 = ar1015;
	}

	public long getAr15e() {
		return ar15e;
	}

	public void setAr15e(long ar15e) {
		this.ar15e = ar15e;
	}

	public long getArall() {
		return arall;
	}

	public void setArall(long arall) {
		this.arall = arall;
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
		builder.append("JoinStatusVo [");
		if (cntrctYy != null)
			builder.append("cntrctYy=").append(cntrctYy).append(", ");
		if (sidocd != null)
			builder.append("sidocd=").append(sidocd).append(", ");
		if (insrcl != null)
			builder.append("insrcl=").append(insrcl).append(", ");
		if (sidonm != null)
			builder.append("sidonm=").append(sidonm).append(", ");
		builder.append("mcnt=").append(mcnt).append(", wcnt=").append(wcnt).append(", mwall=").append(mwall)
				.append(", ag30=").append(ag30).append(", ag40=").append(ag40).append(", ag50=").append(ag50)
				.append(", ag60=").append(ag60).append(", ag70=").append(ag70).append(", agall=").append(agall)
				.append(", gicnt=").append(gicnt).append(", bicnt=").append(bicnt).append(", gball=").append(gball)
				.append(", ar2m=").append(ar2m).append(", ar24=").append(ar24).append(", ar46=").append(ar46)
				.append(", ar68=").append(ar68).append(", ar810=").append(ar810).append(", ar1015=").append(ar1015)
				.append(", ar15e=").append(ar15e).append(", arall=").append(arall).append(", ");
		if (crtid != null)
			builder.append("crtid=").append(crtid).append(", ");
		if (crtdt != null)
			builder.append("crtdt=").append(crtdt);
		builder.append("]");
		return builder.toString();
	}
	
	

}
