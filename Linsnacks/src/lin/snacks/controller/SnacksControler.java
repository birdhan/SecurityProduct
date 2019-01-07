package lin.snacks.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lin.snacks.pojo.Leave;
import lin.snacks.pojo.Order;
import lin.snacks.pojo.Snack;
import lin.snacks.pojo.User;
import lin.snacks.service.LeaveService;
import lin.snacks.service.OrderService;
import lin.snacks.service.SnackService;
import lin.snacks.service.UserService;

@Controller
public class SnacksControler {
	@Autowired
	private SnackService snackService;
	@Autowired
	private UserService userService;
	@Autowired
	private LeaveService leaveService;
	@Autowired
	private OrderService orderservice;

	/**
	 * 请求转发登录
	 * 
	 * @return
	 */
	@RequestMapping("/userlogin")
	public String userlogin() {
		return "forward:/loginuser?value=login";
	}

	/**
	 * 用户登录与注册判断
	 * 
	 * @return
	 */
	@RequestMapping("/loginuser")
	public String loginuser(HttpServletRequest request) {

		String parameter = request.getParameter("value");
		String typesubmin = "";
		String actionurl = "";
		String url = request.getContextPath();
		String typehid = "";

		if (parameter.equals("快速注册")) {
			typesubmin = "马上注册";
			actionurl = url + "/registeru";
			typehid = "0";

		} else {
			parameter = "用户登录";
			typesubmin = "确认登录";
			actionurl = url + "/loginu";
		}
		request.setAttribute("value", parameter);
		request.setAttribute("typesubmin", typesubmin);
		request.setAttribute("actionurl", actionurl);
		request.setAttribute("typehid", typehid);

		return "login";
	}

	/**
	 * 用户登录
	 * 
	 * @return
	 */
	@RequestMapping("/loginu")
	public String logina(User user, HttpSession session) {
		String url = "error";
		List<User> users = userService.selectuser(user);
		if (users != null && users.size() != 0) {
			session.setAttribute("user", users.get(0).getName());
			session.setAttribute("user1", users.get(0).getId());
			session.setAttribute("user2", users.get(0));
		}
		if (users.size() == 1) {
			return "redirect:/index";
		} else {
			url = "redirect:/userlogin";
		}
		return url;

	}

	/**
	 * 用户注册
	 * 
	 * @return
	 */
	@RequestMapping("/registeru")
	public String redistera(User user) {
		user.setId(UUID.randomUUID().toString());
		userService.adduser(user);
		return "redirect:/userlogin";
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
		List<Leave> leavelist = leaveService.findleaveBySid(id);
		model.addAttribute("leavelist", leavelist);
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
	@RequestMapping("/personal5")
	public String personal5() {

		return "personal5";
	}

	/**
	 * 零食类型查询
	 * 
	 * @param model
	 * @param type
	 * @return
	 */
	@RequestMapping("/findsnackByType")
	public String findsnackByType(Model model, String type) {
		List<Snack> list = snackService.findsnackByType1(type);
		model.addAttribute("list", list);
		return "index";
	}
    /**
     * 添加留言
     * @param leave
     * @param session
     * @param request
     * @param snack
     * @return
     */
	@RequestMapping("/addleave")
	public String addleave(Leave leave, HttpSession session, HttpServletRequest request, Snack snack) {
		leave.setId(UUID.randomUUID().toString());
		leave.setStatus("design");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		leave.setLtime(df.format(new Date()));
		String user1 = session.getAttribute("user").toString();
		String id1 = session.getAttribute("user1").toString();
		leave.setUid(id1);
		leave.setUname(user1);
		leave.setSnacksid(snack.getId());
		leaveService.addleave(leave);
		return "forward:/designdetails";
	}
	
	
	/**
	 * ajax添加预约订单
	 * @param id
	 * @return
	 */
	@RequestMapping("/yuyue")
	@ResponseBody
	public Map<String, Object> yuyue(HttpSession session,HttpServletRequest request,HttpServletResponse response,Order order) {
		
		User user = (User) session.getAttribute("user2");
		
		order.setId(UUID.randomUUID().toString());
		order.setUid(user.getId());
		order.setOstatus(request.getParameter("ostatus"));
		order.setUaddress(user.getAddress());
		order.setUtel(user.getTel());
		order.setUname(user.getName());
		order.setNumber(request.getParameter("number"));
		order.setSname(request.getParameter("sname"));
		order.setSid(request.getParameter("sid"));
		order.setSpic(request.getParameter("spic"));
		order.setOwd(request.getParameter("owd"));
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		order.setOtime((df.format(new Date())));
		snackService.updateeone(request.getParameter("sid"));
		orderservice.addall(order);
		
		Map<String,Object> resultMap =new HashMap<String, Object>();
		resultMap.put("success", "成功");
		return resultMap;
	} 
	/**
	 * 上线产品按类别查询
	 * @param type
	 * @param model
	 * @return
	 */
	@RequestMapping("/findsnackonline")
	public String findsnackonline(String type,Model model) {
		List<Snack> list = snackService.findonlineByType(type);
		model.addAttribute("list", list);
		return "upindex";
	}

	
	
	
	
}
