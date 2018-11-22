package kr.apfs.analysis.service;

import java.util.List;
import java.util.Map;

import kr.apfs.analysis.vo.AcpayVo;


public interface AcpayService {

	
	public List<AcpayVo> getAcpayAnalList(Map<String, Object> condition);

}
