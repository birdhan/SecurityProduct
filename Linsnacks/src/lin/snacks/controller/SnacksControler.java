package lin.snacks.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import lin.snacks.pojo.Snack;
import lin.snacks.service.SnackService;

@Controller
public class SnacksControler {
	@Autowired
	private SnackService snackService;

	@RequestMapping("/test")
	public String test() {

		return "success";
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
			/*String newfileName = UUID.randomUUID().toString() + fileStr.substring(fileStr.lastIndexOf("."));*/
			String newfileName = UUID.randomUUID().toString()+".jpg";
			imageFile.transferTo(new File("D:\\img\\" + newfileName));
			snack.setPicture(newfileName);
		
		}
		snack.setId(UUID.randomUUID().toString());
		System.out.println(snack);
		snackService.insertsnack(snack);
		return "redirect:/adminis";
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
