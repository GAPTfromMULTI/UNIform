package Uniform.my.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	Logger log = Logger.getLogger(this.getClass());
    
    @RequestMapping(value="/my/openSampleList.do")
    public ModelAndView openSampleList(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("");
        log.debug("���ͼ��� �׽�Ʈ");
         
        return mv;
    }
}
