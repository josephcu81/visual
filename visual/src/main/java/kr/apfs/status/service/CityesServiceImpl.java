package kr.apfs.status.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.apfs.status.mapper.CityesMapper;
import kr.apfs.status.vo.CityesStatusVo;


@Service
public class CityesServiceImpl implements CityesService {
	@Autowired
	private CityesMapper cityesMapper;
	@Override
		public List<CityesStatusVo>  getCityesStatusList(Map<String, Object> condition) {
			List<CityesStatusVo> list = cityesMapper.selectCityesStatusList(condition);
			return cityesMapper.selectCityesStatusList(condition);
		}

		
}
