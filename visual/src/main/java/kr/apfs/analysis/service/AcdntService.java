package kr.apfs.analysis.service;

import java.util.List;
import java.util.Map;

import kr.apfs.analysis.vo.AcdntVo;


public interface AcdntService {

	
	public List<AcdntVo> getAcdntAnalList(Map<String, Object> condition);

}
