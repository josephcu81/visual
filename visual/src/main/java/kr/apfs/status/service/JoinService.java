package kr.apfs.status.service;

import java.util.List;
import java.util.Map;

import kr.apfs.status.vo.JoinStatusVo;

public interface JoinService {

	public List<JoinStatusVo> getJoinStatusList(Map<String, Object> condition);

}
