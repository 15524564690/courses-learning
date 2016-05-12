package com.bin.myspring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bin.myspring.entity.Comments;
import com.bin.myspring.entity.Content;
import com.bin.myspring.entity.Test;
import com.bin.myspring.service.CommentsService;
import com.bin.myspring.service.ITestService;

@RestController
@RequestMapping("/test")
public class TestController {
//
//	@Autowired
//	@Qualifier("testService")
//	private ITestService testService;
//	@Autowired
//	@Qualifier("commentsService")
//	private CommentsService commentsService;
//
//
//	@RequestMapping(method = RequestMethod.GET)
//	public ModelAndView test() {
//		Map<String, Object> modelMap = new HashMap<String, Object>();
//		//String result = testService.getTest();
//		//modelMap.put("testKey", result);
//		List<Test> result = testService.findAll();
//
//		modelMap.put("testKey", result);
//		return new ModelAndView("user/class", modelMap);
//	}
//
//	@RequestMapping("content")
//	public ModelAndView content(@RequestParam("cid") Integer cid) {
//		Map<String, Object> modelMap = new HashMap<String, Object>();
//		List<Comments> resultConmments = commentsService.findAll();
//		modelMap.put("comments", resultConmments);
//		return new ModelAndView("user/content", modelMap);
//	}
//	@ResponseBody
//	@RequestMapping(value="ttt",method = RequestMethod.POST)
//	public Map<String, Object> chushihua() {
//		Map<String, Object> modelMap = new HashMap<String, Object>();
//		//String result = testService.getTest();
//		//modelMap.put("testKey", result);
//		List<Test> result = testService.findAll();
//
//		modelMap.put("testKey", result);
//		return modelMap;
//	}
	
/*	@RequestMapping("login")
	public ModelAndView login(@RequestParam("userName") String userName,@RequestParam("passWord") String passWord,HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		userService.login(userName, passWord);
		request.getSession().setAttribute("userName", userName);

		return new ModelAndView("user/content", modelMap);
	}
	@RequestMapping("loginOff")
	public ModelAndView loginOff(HttpServletRequest request) {
		request.getSession().invalidate();
		return new ModelAndView("user/content");
	}*/
	
//	@RequestMapping("regist")
//	public ModelAndView regist(User user,HttpServletRequest request) {
//		Map<String, Object> modelMap = new HashMap<String, Object>();
//		 int str = userService.regist(user);
//
//		if(str < 1){
//			//没有注册成功
//		}else if(str>=1){
//			//meiyouzhucechenggong
//		}
//
//		return new ModelAndView("user/content", modelMap);
//	}
}
