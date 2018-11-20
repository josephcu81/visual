package kr.apfs.analysis.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.apfs.analysis.mapper.AcdntMapper;
import kr.apfs.analysis.vo.AcdntVo;

@Service
public class AcdntServiceImpl implements AcdntService {
	
	@Autowired
	private AcdntMapper acdntMapper;

	@Override
	public List<AcdntVo> getAcdntAnalList(Map<String, Object> condition) {
		return acdntMapper.selectAcdntAnalList(condition);
	}

}
