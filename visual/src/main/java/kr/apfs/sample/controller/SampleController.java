package kr.apfs.sample.controller;

import kr.apfs.sample.service.SampleService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
@RequestMapping({"/sample"})
public class SampleController
{
  private static final Logger logger = LoggerFactory.getLogger(SampleController.class);
  
  @Autowired
  private SampleService sampleService;

  @RequestMapping({"/index"})
  public String index(@RequestParam(required=false) String name, ModelMap map)
  {
    map.addAttribute("greed", sampleService.getGreeding(name));
    return "sample/index";
  }
  
  @RequestMapping({"/index2"})
  public String index2(@RequestParam(required=false) String name, ModelMap map)
  {
    map.addAttribute("greed", sampleService.getGreeding(name));
    return "sample/index2";
  }
  
  @RequestMapping({"/data"})
  @ResponseBody
  public String data() {
	  return sampleService.getData();
  }
  
  @RequestMapping({"/menu"})
  public String menu() {
	  return "sample/menu";
  }
}