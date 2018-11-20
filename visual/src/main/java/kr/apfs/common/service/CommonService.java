package kr.apfs.common.service;

import java.util.List;
import java.util.Map;

/**
 * 공통 기능 서비스 인터페이스
 * @author josephcu
 *
 */
public interface CommonService {
	/**
	 * 시도 코드 목록 조회
	 * @return List<Map<String, Object>> key/value 목록
	 */
	public List<Map<String, Object>> getSidoCodeList();

	public List<Map<String, Object>> getAreaIdList();
	
	public List<Map<String, Object>> getCropIdList();
	public List<Map<String, Object>> getFppCdList();
	/**
	 * 농산물 가격정보 > 부류코드
	 * @return
	 */
	public List<Map<String, Object>> getItemCategoryList();
	
	/**
	 * 농산물 가격정보 > 지역코드
	 * @return
	 */
	public List<Map<String, Object>>  getContryCodeList();
}
