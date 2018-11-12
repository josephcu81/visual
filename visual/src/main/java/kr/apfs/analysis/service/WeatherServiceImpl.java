package kr.apfs.analysis.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.apfs.analysis.mapper.WeatherMapper;
import kr.apfs.analysis.vo.WeatherVo;
import support.util.ResultVo;

@Service
public class WeatherServiceImpl implements WeatherService {
	@Autowired
	private WeatherMapper weatherMapper;

	@Override
	@Transactional
	public ResultVo save(List<WeatherVo> list) {
		ResultVo result = new ResultVo(Boolean.TRUE, "기상정보 저장을 완료 하였습니다.");
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("list", list);
		int insertCnt= weatherMapper.insertWeatherInfo(data);
		result.put("insertCnt", insertCnt);
		return result;
	}

}
