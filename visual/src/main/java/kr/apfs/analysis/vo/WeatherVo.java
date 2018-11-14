package kr.apfs.analysis.vo;

public class WeatherVo {
	// eatherVo [ymd=2018-10-17 00:00:00, dayavgta=0.0, daymaxta=0.0, dayminta=0.0, dayavgrhm=0.0, dayminrhm=0.0, daysumrn=0.0, dayavgws=0.0, daysumss=0.0, 0.0, ], WeatherVo [ymd=2018-10-17 00:00:00, dayavgta=0.0, daymaxta=0.0, dayminta=0.0, dayavgrhm=0.0, dayminrhm=0.0, daysumrn=0.0, dayavgws=0.0, daysumss=0.0, 0.0, ], WeatherVo [ymd=2018-10-17 00:00:00, dayavgta=0.0, daymaxta=0.0, dayminta=0.0, dayavgrhm=0.0, dayminrhm=0.0, daysumrn=0.0, dayavgws=0.0, daysumss=0.0, 0.0, ], WeatherVo [ymd=2018-10-17 00:00:00, dayavgta=0.0, daymaxta=0.0, dayminta=0.0, dayavgrhm=0.0, dayminrhm=0.0, daysumrn=0.0, dayavgws=0.0, daysumss=0.0, 0.0, ], WeatherVo [ymd=2018-10-17 00:00:00, dayavgta=0.0, daymaxta=0.0, dayminta=0.0, dayavgrhm=0.0
	private String ymd;
	private String areaId;
	private String areaName;
	private String paCropSpeId;
	private String paCropName;
	private String paCropSpeName;
	private float dayAvgTa;
	private float dayMaxTa;
	private float dayMinTa;
	private float dayAvgRhm;
	private float dayMinRhm;
	private float daySumRn;
	private float dayAvgWs;
	private float daySumSs;
	private float wrnCount;
	private String wrnCd;
	private String wrnNm;
	private String crtid;
	private String crtdt;
	
	
	public String getYmd() {
		return ymd;
	}


	public void setYmd(String ymd) {
		this.ymd = ymd;
	}


	public String getAreaId() {
		return areaId;
	}


	public void setAreaId(String areaId) {
		this.areaId = areaId;
	}


	public String getAreaName() {
		return areaName;
	}


	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}


	public String getPaCropSpeId() {
		return paCropSpeId;
	}


	public void setPaCropSpeId(String paCropSpeId) {
		this.paCropSpeId = paCropSpeId;
	}


	public String getPaCropName() {
		return paCropName;
	}


	public void setPaCropName(String paCropName) {
		this.paCropName = paCropName;
	}


	public String getPaCropSpeName() {
		return paCropSpeName;
	}


	public void setPaCropSpeName(String paCropSpeName) {
		this.paCropSpeName = paCropSpeName;
	}


	public float getDayAvgTa() {
		return dayAvgTa;
	}


	public void setDayAvgTa(float dayAvgTa) {
		this.dayAvgTa = dayAvgTa;
	}


	public float getDayMaxTa() {
		return dayMaxTa;
	}


	public void setDayMaxTa(float dayMaxTa) {
		this.dayMaxTa = dayMaxTa;
	}


	public float getDayMinTa() {
		return dayMinTa;
	}


	public void setDayMinTa(float dayMinTa) {
		this.dayMinTa = dayMinTa;
	}


	public float getDayAvgRhm() {
		return dayAvgRhm;
	}


	public void setDayAvgRhm(float dayAvgRhm) {
		this.dayAvgRhm = dayAvgRhm;
	}


	public float getDayMinRhm() {
		return dayMinRhm;
	}


	public void setDayMinRhm(float dayMinRhm) {
		this.dayMinRhm = dayMinRhm;
	}


	public float getDaySumRn() {
		return daySumRn;
	}


	public void setDaySumRn(float daySumRn) {
		this.daySumRn = daySumRn;
	}


	public float getDayAvgWs() {
		return dayAvgWs;
	}


	public void setDayAvgWs(float dayAvgWs) {
		this.dayAvgWs = dayAvgWs;
	}


	public float getDaySumSs() {
		return daySumSs;
	}


	public void setDaySumSs(float daySumSs) {
		this.daySumSs = daySumSs;
	}


	public float getWrnCount() {
		return wrnCount;
	}


	public void setWrnCount(float wrnCount) {
		this.wrnCount = wrnCount;
	}


	public String getWrnCd() {
		return wrnCd;
	}


	public void setWrnCd(String wrnCd) {
		this.wrnCd = wrnCd;
		
		switch(wrnCd) {
		case "W2":
			this.wrnNm="강풍주의보";
			break;
		case "W3":
			this.wrnNm="강풍경보";
			break;
		case "R2":
			this.wrnNm="호우주의보";
			break;
		case "R3":
			this.wrnNm="호우경보";
			break;
		case "S2":
			this.wrnNm="대설주의보";
			break;
		case "S3":
			this.wrnNm="대설경보";
			break;
		case "H2":
			this.wrnNm="폭염주의보";
			break;
		case "H3":
			this.wrnNm="폭염주의보";
			break;
		case "D2":
			this.wrnNm="건조주의보";
			break;
		case "D3":
			this.wrnNm="건조경보";
			break;
		case "C2":
			this.wrnNm="한파주의보";
			break;
		case "C3":
			this.wrnNm="한파경보";
			break;
		case "T2":
			this.wrnNm="태풍주의보";
			break;
		case "T3":
			this.wrnNm="태풍경보";
			break;
		default :
			this.wrnNm="";
			break;
		}
	}

	public void setWrnNm(String wrnNm) {
		if (this.wrnNm == null) this.wrnNm = wrnNm;
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


	public String getWrnNm() {
		if (this.wrnNm != null) {
			return this.wrnNm;
		}
		if(this.wrnCd != null) {
			switch(this.wrnCd) {
			case "W2":
				this.wrnNm="강풍주의보";
				break;
			case "W3":
				this.wrnNm="강풍경보";
				break;
			case "R2":
				this.wrnNm="호우주의보";
				break;
			case "R3":
				this.wrnNm="호우경보";
				break;
			case "S2":
				this.wrnNm="대설주의보";
				break;
			case "S3":
				this.wrnNm="대설경보";
				break;
			case "H2":
				this.wrnNm="폭염주의보";
				break;
			case "H3":
				this.wrnNm="폭염주의보";
				break;
			case "D2":
				this.wrnNm="건조주의보";
				break;
			case "D3":
				this.wrnNm="건조경보";
				break;
			case "C2":
				this.wrnNm="한파주의보";
				break;
			case "C3":
				this.wrnNm="한파경보";
				break;
			case "T2":
				this.wrnNm="태풍주의보";
				break;
			case "T3":
				this.wrnNm="태풍경보";
				break;
			default :
				this.wrnNm="";
				break;
			}
			return this.wrnNm;
		} else {
			return null;
		}
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("WeatherVo [");
		if (ymd != null) {
			builder.append("ymd=");
			builder.append(ymd);
			builder.append(", ");
		}
		if (areaId != null) {
			builder.append("areaId=");
			builder.append(areaId);
			builder.append(", ");
		}
		if (areaName != null) {
			builder.append("areaName=");
			builder.append(areaName);
			builder.append(", ");
		}
		if (paCropSpeId != null) {
			builder.append("paCropSpeId=");
			builder.append(paCropSpeId);
			builder.append(", ");
		}
		if (paCropName != null) {
			builder.append("paCropName=");
			builder.append(paCropName);
			builder.append(", ");
		}
		if (paCropSpeName != null) {
			builder.append("paCropSpeName=");
			builder.append(paCropSpeName);
			builder.append(", ");
		}
		builder.append("dayAvgTa=");
		builder.append(dayAvgTa);
		builder.append(", dayMaxTa=");
		builder.append(dayMaxTa);
		builder.append(", dayMinTa=");
		builder.append(dayMinTa);
		builder.append(", dayAvgRhm=");
		builder.append(dayAvgRhm);
		builder.append(", dayMinRhm=");
		builder.append(dayMinRhm);
		builder.append(", daySumRn=");
		builder.append(daySumRn);
		builder.append(", dayAvgWs=");
		builder.append(dayAvgWs);
		builder.append(", daySumSs=");
		builder.append(daySumSs);
		builder.append(", wrnCount=");
		builder.append(wrnCount);
		builder.append(", ");
		if (wrnCd != null) {
			builder.append("wrnCd=");
			builder.append(wrnCd);
			builder.append(", ");
		}
		if (wrnNm != null) {
			builder.append("wrnNm=");
			builder.append(getWrnNm());
			builder.append(", ");
		}
		if (crtid != null) {
			builder.append("crtid=");
			builder.append(crtid);
			builder.append(", ");
		}
		if (crtdt != null) {
			builder.append("crtdt=");
			builder.append(crtdt);
		}
		builder.append("]");
		return builder.toString();
	}
}
