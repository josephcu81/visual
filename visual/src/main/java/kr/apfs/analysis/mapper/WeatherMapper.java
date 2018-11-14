package kr.apfs.analysis.mapper;

import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("WeatherMapper")
public interface WeatherMapper {
	
	/**
	 * 기상정보 저장 처리
	 * @param weatherInfo
	 * @return
	 */
	int insertWeatherInfo(Map<String, Object> weatherInfo);

}
