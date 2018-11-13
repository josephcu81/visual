package kr.apfs.status.vo;

public class CityesStatusVo {
	private String cntty; //  - 구분;
	private String sidocd; //  - 구분;
	private String sidonm; //  - 구분;
	private long tagar; //  - 대상면적;
	private long sbfmcnt; //  - 가입농가수;
	private long pcycnt; //  - 건수;
	private long objcnt; //  - 과수원(농지)수;
	private long sbam; //  - 금액;
	private long sbar; //  - 면적;
	private float asbbrt; //  - 면적가입률;
	private long prms; //  - 보험료;
	private long govprm; // 보험료 - 국가;
	private long sidoprm; // 보험료 - 시도;
	private long sggprm; // 보험료 - 시군구;
	private long fmprm; // 보험료 - 농가;
	private long rfas; //  - 환급금;
	private long govrfa; // 환급금 - 국가;
	private long sidorfa; // 환급금 - 시도;
	private long sggrfa; // 환급금 - 시군구;
	private long cnbnrfa; // 환급금 - 농가;
	private long rfprm; //  - 환급금차감후 보혐료;
	private long rffmcnt; // 환급금차감후 보혐료 - 농가;
	private long riskprm; //  - 위험 보험료;
	private long grsprm; //  - 영업 보험료;
	private float prmrt; //  - 보험요율;
	private long rfcnt; //  - 환급건수;
	private float rfrt; //  - 환급율;
	private long prmpp; //  - 건당보험료(천원);
	private long acdcnt; //  - 사고현황 지급건수;
	private long idm; //  - 보험금;
	private long idmpa; //  - 건당보험금;
	private float acdrt; //  - 사고율;
	private float losrt; //  - 손해율;
	public String getCntty() {
		return cntty;
	}
	public void setCntty(String cntty) {
		this.cntty = cntty;
	}
	public String getSidocd() {
		return sidocd;
	}
	public void setSidocd(String sidocd) {
		this.sidocd = sidocd;
	}
	public String getSidonm() {
		return sidonm;
	}
	public void setSidonm(String sidonm) {
		this.sidonm = sidonm;
	}
	public long getTagar() {
		return tagar;
	}
	public void setTagar(long tagar) {
		this.tagar = tagar;
	}
	public long getSbfmcnt() {
		return sbfmcnt;
	}
	public void setSbfmcnt(long sbfmcnt) {
		this.sbfmcnt = sbfmcnt;
	}
	public long getPcycnt() {
		return pcycnt;
	}
	public void setPcycnt(long pcycnt) {
		this.pcycnt = pcycnt;
	}
	public long getObjcnt() {
		return objcnt;
	}
	public void setObjcnt(long objcnt) {
		this.objcnt = objcnt;
	}
	public long getSbam() {
		return sbam;
	}
	public void setSbam(long sbam) {
		this.sbam = sbam;
	}
	public long getSbar() {
		return sbar;
	}
	public void setSbar(long sbar) {
		this.sbar = sbar;
	}
	public float getAsbbrt() {
		return asbbrt;
	}
	public void setAsbbrt(float asbbrt) {
		this.asbbrt = asbbrt;
	}
	public long getPrms() {
		return prms;
	}
	public void setPrms(long prms) {
		this.prms = prms;
	}
	public long getGovprm() {
		return govprm;
	}
	public void setGovprm(long govprm) {
		this.govprm = govprm;
	}
	public long getSidoprm() {
		return sidoprm;
	}
	public void setSidoprm(long sidoprm) {
		this.sidoprm = sidoprm;
	}
	public long getSggprm() {
		return sggprm;
	}
	public void setSggprm(long sggprm) {
		this.sggprm = sggprm;
	}
	public long getFmprm() {
		return fmprm;
	}
	public void setFmprm(long fmprm) {
		this.fmprm = fmprm;
	}
	public long getRfas() {
		return rfas;
	}
	public void setRfas(long rfas) {
		this.rfas = rfas;
	}
	public long getGovrfa() {
		return govrfa;
	}
	public void setGovrfa(long govrfa) {
		this.govrfa = govrfa;
	}
	public long getSidorfa() {
		return sidorfa;
	}
	public void setSidorfa(long sidorfa) {
		this.sidorfa = sidorfa;
	}
	public long getSggrfa() {
		return sggrfa;
	}
	public void setSggrfa(long sggrfa) {
		this.sggrfa = sggrfa;
	}
	public long getCnbnrfa() {
		return cnbnrfa;
	}
	public void setCnbnrfa(long cnbnrfa) {
		this.cnbnrfa = cnbnrfa;
	}
	public long getRfprm() {
		return rfprm;
	}
	public void setRfprm(long rfprm) {
		this.rfprm = rfprm;
	}
	public long getRffmcnt() {
		return rffmcnt;
	}
	public void setRffmcnt(long rffmcnt) {
		this.rffmcnt = rffmcnt;
	}
	public long getRiskprm() {
		return riskprm;
	}
	public void setRiskprm(long riskprm) {
		this.riskprm = riskprm;
	}
	public long getGrsprm() {
		return grsprm;
	}
	public void setGrsprm(long grsprm) {
		this.grsprm = grsprm;
	}
	public float getPrmrt() {
		return prmrt;
	}
	public void setPrmrt(float prmrt) {
		this.prmrt = prmrt;
	}
	public long getRfcnt() {
		return rfcnt;
	}
	public void setRfcnt(long rfcnt) {
		this.rfcnt = rfcnt;
	}
	public float getRfrt() {
		return rfrt;
	}
	public void setRfrt(float rfrt) {
		this.rfrt = rfrt;
	}
	public long getPrmpp() {
		return prmpp;
	}
	public void setPrmpp(long prmpp) {
		this.prmpp = prmpp;
	}
	public long getAcdcnt() {
		return acdcnt;
	}
	public void setAcdcnt(long acdcnt) {
		this.acdcnt = acdcnt;
	}
	public long getIdm() {
		return idm;
	}
	public void setIdm(long idm) {
		this.idm = idm;
	}
	public long getIdmpa() {
		return idmpa;
	}
	public void setIdmpa(long idmpa) {
		this.idmpa = idmpa;
	}
	public float getAcdrt() {
		return acdrt;
	}
	public void setAcdrt(float acdrt) {
		this.acdrt = acdrt;
	}
	public float getLosrt() {
		return losrt;
	}
	public void setLosrt(float losrt) {
		this.losrt = losrt;
	}
	@Override
	public String toString() {
		return "CityesStatusVo [cntty=" + cntty + ", sidocd=" + sidocd + ", sidonm=" + sidonm + ", tagar=" + tagar
				+ ", sbfmcnt=" + sbfmcnt + ", pcycnt=" + pcycnt + ", objcnt=" + objcnt + ", sbam=" + sbam + ", sbar="
				+ sbar + ", asbbrt=" + asbbrt + ", prms=" + prms + ", govprm=" + govprm + ", sidoprm=" + sidoprm
				+ ", sggprm=" + sggprm + ", fmprm=" + fmprm + ", rfas=" + rfas + ", govrfa=" + govrfa + ", sidorfa="
				+ sidorfa + ", sggrfa=" + sggrfa + ", cnbnrfa=" + cnbnrfa + ", rfprm=" + rfprm + ", rffmcnt=" + rffmcnt
				+ ", riskprm=" + riskprm + ", grsprm=" + grsprm + ", prmrt=" + prmrt + ", rfcnt=" + rfcnt + ", rfrt="
				+ rfrt + ", prmpp=" + prmpp + ", acdcnt=" + acdcnt + ", idm=" + idm + ", idmpa=" + idmpa + ", acdrt="
				+ acdrt + ", losrt=" + losrt + "]";
	}
	
	

}
