package kr.apfs.status.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.apfs.status.mapper.ItemMapper;
import kr.apfs.status.vo.ItemStatusVo;

@Service
public class ItemsServiceImpl implements ItemsService {
	@Autowired
	private ItemMapper itemMapper;
	@Override
	public List<ItemStatusVo> getItemsStatusList(Map<String, Object> condition) {
		
		//public List<ItemStatusVo> list = itemMapper.selectItemStatusList(condition);
		// TODO Auto-generated method stub
		return itemMapper.selectItemStatusList(condition);
	}

}
