package lin.snacks.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import lin.snacks.pojo.Admin;
import lin.snacks.pojo.Leave;
import lin.snacks.pojo.Order;
import lin.snacks.pojo.Snack;
import lin.snacks.pojo.User;
import lin.snacks.pojo.Vote;
import lin.snacks.service.AdminService;
import lin.snacks.service.LeaveService;
import lin.snacks.service.OrderService;
import lin.snacks.service.SnackService;
import lin.snacks.service.UserService;
import lin.snacks.service.VoteService;

@Controller
public class SnacksAdmin {
	
	@Autowired
	private SnackService snackService;
	@Autowired
	private AdminService adminService;
	@Autowired
	private OrderService orderservice;
	@Autowired
	private LeaveService leaveservice;
	@Autowired
	private UserService userservice;
	@Autowired
	private VoteService voteservice;

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
	public String logina(Admin admin,HttpSession session) {
		String url = "error";
		List<Admin> admins = adminService.selectadmin(admin);
		if(admins !=null && admins.size() !=0) {
			session.setAttribute("admin", admins.get(0));
			session.setAttribute("admins", admins.get(0).getName());
			session.setAttribute("adminss", admins.get(0).getId());
		}
		
		if (admins.size() == 1) {
			return "redirect:/adminis";
		} else {
			url = "redirect:/adminlogin";
		}
		return url;
	}
	
	
	

	/**
	 * 管理员注册
	 * 
	 * @return
	 */
	@RequestMapping("/registera")
	public String redistera(Admin admin) {
		admin.setId(UUID.randomUUID().toString());
		adminService.addadmin(admin);
		return "redirect:/adminlogin";
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
		System.out.println(snack.getUpsize());
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
	
	
	/**
	 * 订单管理查询所有订单
	 * @return
	 */
	@RequestMapping("/orderadmin")
	public String orderadmin(HttpServletRequest request,HttpServletResponse response,Model model) {
		List<Order> findAll001 = orderservice.findAll();
		model.addAttribute("listone",findAll001);
		return "adminis/orderadmin";
	}
	/**
	 * 删除订单
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping("/orderdelete")
	public String orderdelete(HttpServletRequest request,HttpServletResponse response,Model model) {
		String idsa = (String) request.getParameter("id");
		
		orderservice.delete(idsa);
		return "redirect:/orderadmin";
	}
	
	/**
	 * 修改订单
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping("/orderupdate")
	public String orderupdate(HttpServletRequest request,HttpServletResponse response,Order order) {
		orderservice.updateorder(order);
		return "redirect:/orderadmin";
	}
	
	
	/**
	 * 留言管理查询留言
	 * @return
	 */
	@RequestMapping("/mesadmin")
	public String mesadmin(HttpServletRequest request,Model model) {
		List<Leave> findall = leaveservice.findall();
		model.addAttribute("listtwo",findall);
		return "adminis/liuyan";
	}
	/**
	 * 删除留言
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/mesdeladmin")
	public String mesdeladmin(HttpServletRequest request,Model model) {
		String id=request.getParameter("id");
		leaveservice.deletelee(id);
		
		return "redirect:/mesadmin";
	}
	/**
	 * 投票管理
	 * @return
	 */
	@RequestMapping("/pickadmin")
	public String pickadmin(Model model) {
		List<Vote> findAll = voteservice.findAll();
		model.addAttribute("findvote",findAll);
		return "adminis/voteadmin";
	}
	/**
	 * 删除票数
	 * @return
	 */
	@RequestMapping("/pickdelete")
	public String pickdelete(String id) {
		voteservice.deletevote(id);
	return "redirect:/pickadmin";
	}
	/**
	 * 用户管理获取所有用户
	 * @return
	 */
	@RequestMapping("/useradmin")
	public String useradmin(Model model) {
		List<User> findAll = userservice.findAll();
		model.addAttribute("listtwo3",findAll);
		return "adminis/userset";
	}
	
	
	@RequestMapping("/userdelete")
	public String userdelets(HttpServletRequest request,String id) {
		
		userservice.deleteuser(id);
		return "redirect:/useradmin";
	}
	/**
	 * 预约管理查询
	 * @return
	 */ 
	@RequestMapping("/yuyueadmin")
	public String yuyueadmin(HttpServletRequest request,Model model) {
		String parameter0 = "order";
		List<Order> findBystatu = orderservice.findBystatu(parameter0);
		model.addAttribute("listone1",findBystatu);
		return "adminis/yuyueadmin";
	}
	
	/**
	 * 预约成功修改
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/yuyueupadmin")
	public String yuyueupadmin(HttpServletRequest request) {
		String parameter0 = "unpaid";
		String id=request.getParameter("id");
		orderservice.updateByidst(id, parameter0);
		
		return "redirect:/yuyueadmin";
	}
	
	/**
	 * 删除预约
	 * @param request
	 * @return
	 */
	@RequestMapping("/yuyuedeadmin")
	public String yuyuedeadmin(HttpServletRequest request) {
		
		String id=request.getParameter("id");
		orderservice.delete(id);
		
		return "redirect:/yuyueadmin";
	}
	/**
	 * 查询订单noship状态
	 * @return
	 */
	@RequestMapping("/numberradmin")
	public String numberradmin(Model model) {
		
		
		List<Order> findBystatu = orderservice.findBystatu("noship");
		model.addAttribute("findby02",findBystatu);
		
		
		return "adminis/upnumber";
	}
	
	/**
	 * 上传单号
	 * @param id
	 * @return
	 */
	@RequestMapping("/upbumb")
	public String upbumb(String id,String number) {
		
		orderservice.upByidnumber(id, number);
		return "redirect:/numberradmin";
	}
	
	
	
	@RequestMapping("/updatesnackById")
	public String updatesnackById(Snack snack) {
		snackService.updatesnackById(snack);
		return "redirect:/adminis";
	}
	
	
}
