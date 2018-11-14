package kr.apfs.analysis.service;

import java.util.List;
import java.util.Map;

import kr.apfs.analysis.vo.WeatherVo;
import support.util.ResultVo;

public interface WeatherService {

	/**
	 * 농산물 주산지 날씨정보 저장 처리
	 * @param weatherList
	 * @return
	 */
	public ResultVo save(List<WeatherVo> weatherList);

	public List<WeatherVo> saveAndGetData(Map<String, Object> condition);

}
