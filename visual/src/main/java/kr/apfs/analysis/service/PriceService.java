package kr.apfs.analysis.service;

import java.util.List;
import java.util.Map;

import kr.apfs.analysis.vo.PriceDayVo;

public interface PriceService {

	List<PriceDayVo> getData(Map<String, Object> condition);

}
