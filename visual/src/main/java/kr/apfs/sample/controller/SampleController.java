package kr.apfs.sample.controller;

import kr.apfs.sample.service.SampleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping({"/sample"})
public class SampleController
{

  @Autowired
  private SampleService sampleService;

  @RequestMapping({"/index"})
  public String index(@RequestParam(required=false) String name, ModelMap map)
  {
    map.addAttribute("greed", sampleService.getGreeding(name));
    return "sample/index";
  }
}