package kr.apfs.status.mapper;        
import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.apfs.status.vo.ItemStatusVo;

@Mapper("ItemMapper")
public interface ItemMapper {
	
	/**
	 * 품목별 가입자 현황 목록 조회
	 * @param condition
	 * @return
	 */
	public List<ItemStatusVo> selectItemStatusList(Map<String, Object> condition);

}
