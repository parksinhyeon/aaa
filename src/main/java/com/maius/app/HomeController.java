package com.maius.app;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Inject
    private HomeService service;
	
	@RequestMapping(value = "/hometest", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception  {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		Map<String,Object> result =service.selectTest();
		
		model.addAttribute("result", result );
		
		return "home";
	}
	@RequestMapping(value = "/loginPage.do", method = RequestMethod.GET)
	public String loginPage(Locale locale, Model model) throws Exception  {
		return "login";
	}
	@RequestMapping(value = "/menu.do", method = RequestMethod.GET)
	public String menu(Locale locale, Model model) throws Exception  {
		return "menu";
	}
	@RequestMapping(value = "/joinPage.do", method = RequestMethod.GET)
	public String joinPage(Locale locale, Model model) throws Exception  {
		return "join";
	}
	@RequestMapping(value = "/modifyPage.do", method = RequestMethod.GET)
	public String modifyPage(Locale locale, Model model) throws Exception  {
		return "modify";
	}
	@RequestMapping(value = "/boardList.do", method = RequestMethod.GET)
	public String boardList(Locale locale, Model model) throws Exception  {
		return "boardList";
	}
	@RequestMapping(value = "/boardDetail.do", method = RequestMethod.GET)
	public String boardDetail(Locale locale, Model model) throws Exception  {
		return "boardDetail";
	}
	
	
	
	
}
