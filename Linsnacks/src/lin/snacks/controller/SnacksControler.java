package lin.snacks.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lin.snacks.pojo.Snack;
import lin.snacks.service.SnackService;

@Controller
public class SnacksControler {
	@Autowired
	private SnackService snackService;
	
	
	

	/**
	 * 请求转发登录
	 * @return
	 */
	@RequestMapping("/userlogin")
	public String userlogin() {
		return "forward:/loginuser?value=login";
	}
	
	
	
	/**
	 * 用户登录与注册判断
	 * @return
	 */
	@RequestMapping("/loginuser")
	public String loginuser(HttpServletRequest request) {
		
		String parameter = request.getParameter("value");
		String typesubmin="";
		String actionurl="";
		String url=request.getContextPath();
		String typehid="";

		if(parameter.equals("快速注册")) {
			typesubmin="马上注册";
			actionurl=url+"/registeru";
			typehid="0";
						
		}else {
			parameter="用户登录";
			typesubmin="确认登录";
			actionurl=url+"/loginu";
		}
		request.setAttribute("value", parameter);
		request.setAttribute("typesubmin", typesubmin);
		request.setAttribute("actionurl", actionurl);
		request.setAttribute("typehid", typehid);
		
		return "login";
	}
	
	/**
	 * 用户登录
	 * @return
	 */
	@RequestMapping("/loginu")
	public String logina() {
		
		
		
		return "redirect:/index";
	}
	/**
	 * 用户注册
	 * 
	 * @return
	 */
	@RequestMapping("/registeru")
	public String redistera() {
		
		
		return "redirect:/index";
	}

	/**
	 * 按预定查询
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/index")
	public String index(Model model) {
		List<Snack> list = snackService.findSnackByAll();
		model.addAttribute("list", list);
		return "index";
	}

	/**
	 * 零食详情查询
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/details")
	public String details(String id, Model model) {
		Snack snack = snackService.findSnackById(id);
		snackService.chickrateaddone(id);
		model.addAttribute("snack", snack);
		return "index_detail";
	}

	/**
	 * 设计交流
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/design")
	public String design(Model model) {
		List<Snack> list = snackService.findSnackByDesign();
		model.addAttribute("list", list);
		return "design";
	}

	/**
	 * 设计交流详情
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/designdetails")
	public String designdetails(String id, Model model) {
		Snack snack = snackService.findSnackById(id);
		snackService.chickrateaddone(id);
		model.addAttribute("snack", snack);
		return "design_detail";
	}

	/**
	 * 上线查询
	 * 
	 * @return
	 */
	@RequestMapping("/upindex")
	public String upindex(Model model) {
		List<Snack> list = snackService.findSnackByOnline();
		model.addAttribute("list", list);
		return "upindex";
	}

	/**
	 * 上线产品详情查询
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/upindexdetails")
	public String upindexdetails(String id, Model model) {
		Snack snack = snackService.findSnackById(id);
		snackService.chickrateaddone(id);
		model.addAttribute("snack", snack);
		return "upindex_detail";
	}

	@RequestMapping("/personal")
	public String personal() {

		return "personal";
	}

	@RequestMapping("/personal2")
	public String personal2() {

		return "personal2";
	}

	@RequestMapping("/personal3")
	public String personal3() {

		return "personal3";
	}

	@RequestMapping("/personal4")
	public String personal4() {

		return "personal4";
	}
	
	
	
	
	
	/**
	 * 零食类型查询
	 * @param model
	 * @param type
	 * @return
	 */
	@RequestMapping("/findsnackByType")
	public String findsnackByType(Model model,String type) {
		List<Snack> list = snackService.findsnackByType1(type);
		model.addAttribute("list", list);
		return "index";
	}
	
	

}
