package kr.apfs.status.service;

import java.util.List;
import java.util.Map;

import kr.apfs.status.vo.JoinAcidVo;

public interface JoinAndAcidentService {

	public List<JoinAcidVo> list(Map<String, Object> condition);

}
