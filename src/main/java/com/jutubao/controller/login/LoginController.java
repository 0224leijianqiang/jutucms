package com.jutubao.controller.login;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jutubao.base.BaseController;
import com.jutubao.entity.ParamsMap;

/**
 * 总入口
 * 修改日期：2015/11/2
 */
@Controller
public class LoginController extends BaseController {

	
	
	/**访问登录页
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/login_toLogin")
	public ModelAndView toLogin()throws Exception{
		ModelAndView mv = this.getModelAndView();
		hashMap = this.getMap();
		mv.setViewName("system/index/login");
		mv.addObject("hashMap",hashMap);
		return mv;
	}
	/**请求登录，验证用户
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/login_login" ,produces="application/json;charset=UTF-8")
	@ResponseBody
	public Object login()throws Exception{
		Subject subject = SecurityUtils.getSubject(); 
	    UsernamePasswordToken token = new UsernamePasswordToken("admin","admin"); 
	    try { 
	        subject.login(token); 
	    } catch (AuthenticationException e) { 
	    }
		return null;
	}
	/**
	 * 用户注销
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/logout")
	public ModelAndView logout(){
		ModelAndView mv = this.getModelAndView();
		ParamsMap hashMap = new ParamsMap();
		//shiro销毁登录
		Subject subject = SecurityUtils.getSubject(); 
		subject.logout();
		hashMap = this.getMap();
		mv.setViewName("system/index/login");
		mv.addObject("hashMap",hashMap);
		return mv;
	}
}
