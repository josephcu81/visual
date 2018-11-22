package kr.apfs.analysis.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.apfs.analysis.mapper.AcpayMapper;
import kr.apfs.analysis.vo.AcpayVo;

@Service
public class AcpayServiceImpl implements AcpayService {
	
	@Autowired
	private AcpayMapper acpayMapper;

	@Override
	public List<AcpayVo> getAcpayAnalList(Map<String, Object> condition) {
		return acpayMapper.selectAcpayAnalList(condition);
	}

}
