package kr.apfs.status.mapper;        
import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.apfs.status.vo.CityesStatusVo;

@Mapper("CityesMapper")
public interface CityesMapper {
	
	/**
	 * 시도별 가입자 현황 목록 조회
	 * @param condition
	 * @return
	 */
	public List<CityesStatusVo> selectCityesStatusList(Map<String, Object> condition);

}
