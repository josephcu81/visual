package kr.apfs.status.service;

import java.util.List;
import java.util.Map;

import kr.apfs.status.vo.ItemStatusVo;

/**
 * 품목별 가입 및 사고 현황 서비스 인터페이스
 * @author yeonju
 *
 */
public interface ItemsService {

	List<ItemStatusVo> getItemsStatusList(Map<String, Object> condition);

}
