package kr.apfs.analysis.vo;

public class AcpayVo {
	
	private String sidocd;
	private String sidoetc;
	private String acdcacd;
	private String mcls;
	private String scls;
	private String fppcd;
	private String fpp;
	private float paymgar;
	private float payidm;
	private long fmcnt;
	private float avgidm;
	public String getSidocd() {
		return sidocd;
	}
	public void setSidocd(String sidocd) {
		this.sidocd = sidocd;
	}
	public String getSidoetc() {
		return sidoetc;
	}
	public void setSidoetc(String sidoetc) {
		this.sidoetc = sidoetc;
	}
	public String getAcdcacd() {
		return acdcacd;
	}
	public void setAcdcacd(String acdcacd) {
		this.acdcacd = acdcacd;
	}
	public String getMcls() {
		return mcls;
	}
	public void setMcls(String mcls) {
		this.mcls = mcls;
	}
	public String getScls() {
		return scls;
	}
	public void setScls(String scls) {
		this.scls = scls;
	}
	public String getFppcd() {
		return fppcd;
	}
	public void setFppcd(String fppcd) {
		this.fppcd = fppcd;
	}
	public String getFpp() {
		return fpp;
	}
	public void setFpp(String fpp) {
		this.fpp = fpp;
	}
	public float getPaymgar() {
		return paymgar;
	}
	public void setPaymgar(float paymgar) {
		this.paymgar = paymgar;
	}
	public float getPayidm() {
		return payidm;
	}
	public void setPayidm(float payidm) {
		this.payidm = payidm;
	}
	public long getFmcnt() {
		return fmcnt;
	}
	public void setFmcnt(long fmcnt) {
		this.fmcnt = fmcnt;
	}
	public float getAvgidm() {
		return avgidm;
	}
	public void setAvgidm(float avgidm) {
		this.avgidm = avgidm;
	}
	@Override
	public String toString() {
		return "AcpayVo [sidocd=" + sidocd + ", sidoetc=" + sidoetc + ", acdcacd=" + acdcacd + ", mcls=" + mcls
				+ ", scls=" + scls + ", fppcd=" + fppcd + ", fpp=" + fpp + ", paymgar=" + paymgar + ", payidm=" + payidm
				+ ", fmcnt=" + fmcnt + ", avgidm=" + avgidm + "]";
	}

	
	
	
	
	
	
}
