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
	/**
	 * 작물조회
	 * @return
	 */
	List<Map<String, Object>> selectKmaCropCode();
	/**
	 * 작물조회_농금원
	 * @return
	 */
	List<Map<String, Object>> selectFppCode();
	
	/**
	 * 농산물 가격정보 부류 코드 조회
	 * @return
	 */
	List<Map<String, Object>> selectItemCategoryCode();
	/**
	 * 농산물 가격정보 지역코드조회
	 * @return
	 */
	List<Map<String, Object>> selectContryCode();

}
