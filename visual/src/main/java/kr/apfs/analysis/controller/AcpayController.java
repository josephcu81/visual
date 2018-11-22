package kr.apfs.analysis.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.apfs.analysis.service.AcpayService;
import kr.apfs.common.service.CommonService;


@RequestMapping("/analysis/acpay")
@Controller
public class AcpayController {
	
	@Autowired
	private AcpayService acpayService;
	
	@Autowired
	private CommonService commonService;
	
	/**
	 *  보상 화면접근
	 * @param condition
	 * @param model
	 * @return
	 */
	@RequestMapping("/index")
	public String Acpay ( ModelMap model) {
		// 년도 목록 생성
		
		// 시도 코드 목록 생성
		model.addAttribute("sidoList", commonService.getSidoCodeList());
		model.addAttribute("fppList", commonService.getFppCdList());
		model.addAttribute("mclsList", commonService.getMclsList());
		model.addAttribute("sclsList", commonService.getSclsList());
		
		
		return "/analysis/acpay";
	}
	
	/**
	 * <pre>
	 * 사고_기상재해 조회
	 * year, sidoCode
	 * </pre>
	 * @param condition
	 * @param model 
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/list")
	public String list(@RequestParam Map<String, Object> condition,ModelMap model) {
		return new Gson().toJson(acpayService.getAcpayAnalList(condition));
	}
	


}



