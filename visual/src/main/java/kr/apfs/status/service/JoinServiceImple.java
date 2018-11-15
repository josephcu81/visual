package kr.apfs.status.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.apfs.status.mapper.JoinMapper;
import kr.apfs.status.vo.JoinStatusVo;

@Service
public class JoinServiceImple implements JoinService {
	@Autowired
	private JoinMapper joinMapper;
	@Override
	public List<JoinStatusVo> getJoinStatusList(Map<String, Object> condition) {
		//List<JoinStatusVo> list = joinMapper.selectJoinStatusList(condition);
		return joinMapper.selectJoinStatusList(condition);
	}
	
	private List<JoinStatusVo> getTestData() {
		List<JoinStatusVo> joinStatusList = new ArrayList<JoinStatusVo>();
		
		JoinStatusVo joinStatus1 = new JoinStatusVo(); 
		joinStatus1.setCntrctYy("2017");
		joinStatus1.setSidocd("11000");
		joinStatus1.setInsrcl("FDI");
		joinStatus1.setSidonm("서울");
		joinStatus1.setMcnt(145580);
		joinStatus1.setWcnt(24826);
		joinStatus1.setMwall(170406);
		joinStatus1.setAg30(3051);
		joinStatus1.setAg40(12150);
		joinStatus1.setAg50(37692);
		joinStatus1.setAg60(59580);
		joinStatus1.setAg70(57933);
		joinStatus1.setAgall(170406);
		joinStatus1.setGicnt(170406);
		joinStatus1.setBicnt(217);
		joinStatus1.setGball(170623);
		joinStatus1.setAr2m(2);
		joinStatus1.setAr24(24);
		joinStatus1.setAr46(46);
		joinStatus1.setAr68(12);
		joinStatus1.setAr810(12);
		joinStatus1.setAr1015(12);
		joinStatus1.setAr15e(12);
		joinStatus1.setArall(100);
		joinStatus1.setCrtid("PG");
		joinStatus1.setCrtdt("18/11/01");
		joinStatusList.add(joinStatus1);
		
		JoinStatusVo joinStatus2 = new JoinStatusVo();
		joinStatus2.setCntrctYy("2017");
		joinStatus2.setSidocd("45000");
		joinStatus2.setInsrcl("FDI");
		joinStatus2.setSidonm("전북");
		joinStatus2.setMcnt(145580);
		joinStatus2.setWcnt(24826);
		joinStatus2.setMwall(170406);
		joinStatus2.setAg30(3051);
		joinStatus2.setAg40(12150);
		joinStatus2.setAg50(37692);
		joinStatus2.setAg60(59580);
		joinStatus2.setAg70(57933);
		joinStatus2.setAgall(170406);
		joinStatus2.setGicnt(170406);
		joinStatus2.setBicnt(217);
		joinStatus2.setGball(170623);
		joinStatus2.setAr2m(2);
		joinStatus2.setAr24(24);
		joinStatus2.setAr46(46);
		joinStatus2.setAr68(12);
		joinStatus2.setAr810(12);
		joinStatus2.setAr1015(12);
		joinStatus2.setAr15e(12);
		joinStatus2.setArall(100);
		joinStatus2.setCrtid("PG");
		joinStatus2.setCrtdt("18/11/01");
		joinStatusList.add(joinStatus2);
		
		return joinStatusList;
	}

}
