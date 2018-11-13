package kr.apfs.common.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("CommonMapper")
public interface CommonMapper {
	
	/**
	 * 시도코드 목록 조회
	 */
	List<Map<String, Object>> selectSitoCode();
	
	/**
	 * 주산지 목록조회
	 * @return
	 */
	List<Map<String, Object>> selectKmaAreaCode();

}
