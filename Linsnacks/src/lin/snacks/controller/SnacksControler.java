package lin.snacks.controller;

import java.util.List;

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
	@RequestMapping("/test")
	public String test() {
		
		return "success";
	}
	
	@RequestMapping("/index")
	public String index(Model model) {
		List<Snack> list = snackService.findSnackByAll();
		model.addAttribute("list", list);
		return "index";
	}
	
	@RequestMapping("/details")
	public String details(String id,Model model) {
		Snack snack = snackService.findSnackById(id);
		model.addAttribute("snack", snack);
		return "index_detail";
	}
	
	@RequestMapping("/design")
	public String design() {
		
		return "design";
	}
	@RequestMapping("/designdetails")
	public String designdetails() {
		
		return "design_detail";
	}
	@RequestMapping("/upindex")
	public String upindex() {
		
		return "upindex";
	}
	
	
	@RequestMapping("/upindexdetails")
	public String upindexdetails() {
		
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
	
}
