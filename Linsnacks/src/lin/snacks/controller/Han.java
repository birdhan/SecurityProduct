package lin.snacks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Han {

	@RequestMapping("/test")
	public String test() {
		
		return "success";
	}
	
	@RequestMapping("/index")
	public String index() {
		
		return "index";
	}
	
	@RequestMapping("/details")
	public String details() {
		
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
