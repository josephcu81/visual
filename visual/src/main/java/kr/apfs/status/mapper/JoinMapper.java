package kr.apfs.status.mapper;        
import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.apfs.status.vo.JoinStatusVo;

@Mapper("JoinMapper")
public interface JoinMapper {
	
	/**
	 * 시도별 가입자 현황 목록 조회
	 * @param condition
	 * @return
	 */
	public List<JoinStatusVo> selectJoinStatusList(Map<String, Object> condition);

}
