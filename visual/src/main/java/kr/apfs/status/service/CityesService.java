package kr.apfs.status.service;

import java.util.List;
import java.util.Map;

import kr.apfs.status.vo.CityesStatusVo;

public interface CityesService {

	public List<CityesStatusVo> getCityesStatusList(Map<String, Object> condition);

}
