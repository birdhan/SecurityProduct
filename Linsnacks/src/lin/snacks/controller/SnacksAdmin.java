package lin.snacks.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import lin.snacks.service.SnackService;
import lin.snacks.pojo.Snack;

@Controller
public class SnacksAdmin {
	
	@Autowired
	private SnackService snackService;
	

	/**
	 * 请求转发登录
	 * @return
	 */
	@RequestMapping("/adminlogin")
	public String adminlogin() {
		return "forward:/loginadmin?value=login";
	}
	
	
	
	/**
	 * 管理员登录与注册判断
	 * @return
	 */
	@RequestMapping("/loginadmin")
	public String loginuser(HttpServletRequest request) {
		
		String parameter = request.getParameter("value");
		String typesubmin="";
		String actionurl="";
		String url=request.getContextPath();

		if(parameter.equals("快速注册")) {
			parameter="注册管理员账号"; 
			typesubmin="马上注册";
			actionurl=url+"/registera";
						
		}else {
			parameter="管理员登录";
			typesubmin="确认登录";
			actionurl=url+"/logina";
		}
		request.setAttribute("value", parameter);
		request.setAttribute("typesubmin", typesubmin);
		request.setAttribute("actionurl", actionurl);
		
		
		return "adminis/login";
	}
	
	/**
	 * 管理员登录
	 * @return
	 */
	@RequestMapping("/logina")
	public String logina() {
		
		
		
		return "adminis/index";
	} 
	/**
	 * 管理员注册
	 * 
	 * @return
	 */
	@RequestMapping("/registera")
	public String redistera() {
		
		
		
		return "adminis/index";
	}
	
	
	/**
	 * 后台根据id删除商品
	 * @param id
	 * @return
	 */
	@RequestMapping("/deletesnackById")
	public String deletesnackById(String id) {
		snackService.deletesnackById(id);
		return "redirect:/adminis";
	}
	
	/**
	 * 后台管理添加零食信息
	 * @param snack
	 * @param imageFile
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping("/adminis1")
	public String adminis1(Snack snack, MultipartFile imageFile) throws IllegalStateException, IOException {
		String fileStr = imageFile.getOriginalFilename();
		if (fileStr!=null) {
			String newfileName = UUID.randomUUID().toString()+".jpg";
			imageFile.transferTo(new File("D:\\img\\" + newfileName));
			snack.setPicture(newfileName);
		
		}
		snack.setId(UUID.randomUUID().toString());
		snack.setInventory(snack.getUpsize());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		snack.setUptime(df.format(new Date()));
		System.out.println(snack);
		snackService.insertsnack(snack);
		return "redirect:/adminis";
	}
	
	/**
	 * 后台查询所有零食信息
	 * @param model
	 * @return
	 */
	@RequestMapping("/adminis")
	public String adminis(Model model) {
		List<Snack> list = snackService.findSnacksByHAll();
		model.addAttribute("list", list);
		return "adminis/index";
		
	}
	
}
