package com.jutubao.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jutubao.base.BaseController;
import com.jutubao.biz.impl.FramerworkBiz;
import com.jutubao.entity.ParamsMap;
import com.jutubao.util.PropertiesUtils;

@Controller
public class IndexUIController  extends BaseController{
	@RequestMapping("/index")
	private ModelAndView index(){
		return new ModelAndView("index");
	}
	@Autowired
	private FramerworkBiz biz;
	@RequestMapping("/templates")
	private ModelAndView templates(){
		String PID = this.getMap().getAsString("PID");                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
		ModelAndView mv = this.getModelAndView();
		List<ParamsMap> lists = biz.listTemplates(PID);
		mv.addObject("PID",PID);
		ParamsMap maps = biz.findTemplates(PID);
		if(maps!=null){
			mv.addObject("UPID", maps.getAsString("PID"));
		}
		mv.addObject("lists",lists);
		mv.addObject("TEMPLATE_NAME", this.getMap().getAsString("TEMPLATE_NAME"));
		mv.setViewName("sys_templates");
		return mv;
	}
	/**
	 * 根据顶级模版拿到所有的库  根据所有的库列表拿到所有的属性
	 * @return
	 */
	@RequestMapping("/properties")
	private ModelAndView properties(){
		ModelAndView mv = this.getModelAndView();	
		List<ParamsMap> maps = biz.listTemplates("0");
		mv.addObject("groups", maps);
		String TEMPLATE_KEY = this.getMap().getAsString("TEMPLATE_KEY");
		List<ParamsMap> properties =  biz.listColumns(TEMPLATE_KEY);
		mv.addObject("lists", properties);
		mv.addObject("TEMPLATE_KEY", TEMPLATE_KEY);
		mv.setViewName("sys_properties");
		return mv;
	}
	@RequestMapping("/templatesinfo")
	private ModelAndView templatesInfo(){
		ModelAndView mv = this.getModelAndView();	
		List<ParamsMap> maps = biz.listTemplates("0");
		mv.addObject("groups", maps);
		String TEMPLATE_KEY = this.getMap().getAsString("TEMPLATE_KEY");
		if(TEMPLATE_KEY!=null){
			//得到当前模版ID 然后取得模版下面的所有组别
			List<ParamsMap> templates = biz.listTemplates(this.getMap().getAsString("ID"));
			for(ParamsMap template:templates){
				//根据组别取得所有的小组别
				List<ParamsMap> childrens = biz.listTemplates(template.getAsString("TEMPLATE_ID"));
				for(ParamsMap child:childrens){
					//根据小组别取的所有的对应属性
					List<ParamsMap> properties = biz.listProperties(child.getAsString("TEMPLATE_ID"));
					//根据得到的属性情况初始化属性值
					for(ParamsMap prop:properties){
						//将默认值转为数据跟字符串形式
						prop.toStringArray("PROPERTIES_DEFAULT");
					}
					child.put("properties",properties);
				}
				template.append("childrens",childrens);
			}
			mv.addObject("lists", templates);
		}
		mv.addObject("TEMPLATE_KEY", TEMPLATE_KEY);
		mv.setViewName("sys_templates_info");
		return mv;
	}
	@RequestMapping("/editProperties")
	private ModelAndView editProperties(){
		ModelAndView mv =  this.getModelAndView();
		ParamsMap template = biz.findTemplates(this.getMap().getAsString("PROP_GROUP"));
		mv.addObject("template", template);
		mv.addObject("iselect",PropertiesUtils.getProperties(PropertiesUtils.TEMPLAETE_ISELECT));
		mv.addObject("list",biz.listTemplates("0"));
		mv.setViewName("sys_properties_edit");
		return mv; 
	}
	@RequestMapping("/addProperties")
	private ModelAndView addProperties(){
		ModelAndView mv =  this.getModelAndView();
		String TEMPLATE_KEY = this.getMap().getAsString("TEMPLATE_KEY");
		String COLUMN_NAME  = this.getMap().getAsString("COLUMN_NAME");
		if(TEMPLATE_KEY!=null&&COLUMN_NAME!=null){
			mv.addObject("columns", biz.findColumns(TEMPLATE_KEY, COLUMN_NAME));
		}
		mv.addObject("iselect",PropertiesUtils.getProperties(PropertiesUtils.TEMPLAETE_ISELECT));
		mv.addObject("list",biz.listTemplates("0"));
		mv.setViewName("sys_properties_edit");
		return mv; 
	}
	@RequestMapping("/addTemplates")
	private ModelAndView addTemplates(){
		ModelAndView mv =  this.getModelAndView();
		String PID = this.getMap().getAsString("PID");
		String ID = this.getMap().getAsString("ID");
		List<ParamsMap> list = biz.listTemplates(PID==null?"0":PID);
		if(ID!=null){
			ParamsMap paramsMap =  biz.findTemplates(ID);
			mv.addObject("params", paramsMap);
			PID = paramsMap.getAsString("PID");
		}
		list.add(biz.findTemplates(PID));
		mv.addObject("list",list);
		mv.addObject("PID", PID);
		mv.setViewName("sys_templates_edit");
		return mv; 
	}
	@RequestMapping("/saveTemplates")
	private ModelAndView saveTemplates(){
		ParamsMap map =getMap();
		biz.saveTemplates(map);
		return new ModelAndView("save_result");
	}
	@RequestMapping("/saveProperties")
	private ModelAndView saveProperties(){
		ParamsMap map =getMap();
		biz.saveProperties(map);
		return new ModelAndView("save_result");
	}
}
