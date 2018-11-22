package kr.apfs.analysis.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.apfs.analysis.vo.AcpayVo;

@Mapper("AcpayMapper")
public interface AcpayMapper {
	
	/**
	 * 보상분석
	 * @param condition
	 * @return
	 */
	public List<AcpayVo> selectAcpayAnalList(Map<String, Object> condition);

}
