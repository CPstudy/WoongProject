package woong.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import woong.dto.WoongDTO;
import woong.mybatis.WoongMapper;

@Controller
public class WoongController {
	
	@RequestMapping(value="/main.woong")
	public String list(HttpServletRequest arg0) throws Exception {
		List<WoongDTO> list = WoongMapper.listWoong();
		arg0.setAttribute("list", list);
		return "WEB-INF/woong/main.jsp";
	}
	
	@RequestMapping(value="/write.woong")
	public ModelAndView delete() throws Exception {
		return new ModelAndView("WEB-INF/woong/write.jsp");
	}
	
	@RequestMapping(value="/write_pro.woong", method=RequestMethod.POST)
	public ModelAndView write(HttpServletRequest request, @ModelAttribute WoongDTO dto) throws Exception {
		return new ModelAndView("redirect:main.woong");
	}
}
