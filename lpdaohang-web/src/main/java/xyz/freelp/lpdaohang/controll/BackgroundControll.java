package xyz.freelp.lpdaohang.controll;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Utli.MD5;
import xyz.freelp.lpdaohang.bean.AJAXResult;
import xyz.freelp.lpdaohang.bean.Administrator;
import xyz.freelp.lpdaohang.bean.Page2;
import xyz.freelp.lpdaohang.bean.User;
import xyz.freelp.lpdaohang.manager.service.UserService;
import xyz.freelp.lpdaohang.portal.service.AdminService;


@Controller
public class BackgroundControll {
	
	@Autowired
	private AdminService adminService;
	//进入首页
	@RequestMapping("/xzk/d/website")
	public String hlogin() {
		return "hlogin";
	}
	
	@RequestMapping("/hindex")
	public String hindex() {
		return "hindex";
	}
	
	//登陆校验
	@ResponseBody
	@RequestMapping("/dohlogin")
	public Object dologin(Administrator admin, HttpSession session) {
		AJAXResult result = new AJAXResult();
		MD5 md5 = new MD5();
		admin.setAdminpswd(md5.getResult(admin.getAdminpswd()));
		try {
			Administrator dbAdmin = adminService.queryLoginAdmin(admin);
			if(dbAdmin == null) {
				result.setSuccess(false);
			}else {
				session.setAttribute("admininfo", dbAdmin);
				result.setSuccess(true);
				/////////
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
