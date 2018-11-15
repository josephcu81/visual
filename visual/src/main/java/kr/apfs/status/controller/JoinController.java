package kr.apfs.status.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.apfs.common.service.CommonService;
import kr.apfs.status.service.JoinService;

/**
 * 시도별 가입자 현황
 * @author yeonju
 *
 */
@Controller
@RequestMapping("/status/join")
public class JoinController {
	@Autowired
	private JoinService joinService;
	
	@Autowired
	private CommonService commonService;
	
	/**
	 * 시도별 가입자 현황 초기화면
	 * @param model
	 * @return
	 */
	@RequestMapping("/index")
	public String index(ModelMap model) {
		// 시도 코드 목록 생성
		//model.addAttribute("sidoList", commonService.getSidoCodeList());
		return "/status/join";
	}
	
	/**
	 * 시도별 가입자 현황 목록 조회
	 * @param condition
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/list")
	public String list(@RequestParam Map<String, Object> condition) {
		return new Gson().toJson(joinService.getJoinStatusList(condition));
	}
}
