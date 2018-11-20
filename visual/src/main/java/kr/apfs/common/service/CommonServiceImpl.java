package kr.apfs.common.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.apfs.common.mapper.CommonMapper;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	private CommonMapper commonMapper;
	
	@Override
	public List<Map<String, Object>> getSidoCodeList() {
		return commonMapper.selectSitoCode();
	}

	@Override
	public List<Map<String, Object>> getAreaIdList() {
		
		return commonMapper.selectKmaAreaCode();
	}
	
	@Override
	public List<Map<String, Object>> getCropIdList() {
		
		return commonMapper.selectKmaCropCode();
	}

	@Override
	public List<Map<String, Object>> getFppCdList() {
		return commonMapper.selectFppCode();
	}
	
	@Override
	public List<Map<String, Object>> getItemCategoryList() {
		return commonMapper.selectItemCategoryCode();
	}

	@Override
	public List<Map<String, Object>> getContryCodeList() {
		return commonMapper.selectContryCode();
	}
	

}
