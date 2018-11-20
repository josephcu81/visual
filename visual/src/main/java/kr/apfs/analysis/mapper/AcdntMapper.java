package kr.apfs.analysis.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.apfs.analysis.vo.AcdntVo;

@Mapper("AcdntMapper")
public interface AcdntMapper {

	/**
	 * 사고_기상재해 조회
	 * @param condition
	 * @return
	 */
	public List<AcdntVo> selectAcdntAnalList(Map<String, Object> condition);

}
