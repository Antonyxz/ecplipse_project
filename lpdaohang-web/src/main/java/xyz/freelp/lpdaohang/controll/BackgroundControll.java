package xyz.freelp.lpdaohang.controll;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Utli.MD5;
import xyz.freelp.lpdaohang.bean.AJAXResult;
import xyz.freelp.lpdaohang.bean.Administrator;
import xyz.freelp.lpdaohang.bean.User;


@Controller
public class BackgroundControll {

	//进入首页
	@RequestMapping("/xzk/d/website")
	public String index() {
		return "hlogin";
	}
	
	//登陆校验
	@ResponseBody
	@RequestMapping("/dohlogin")
	public Object dologin(Administrator admin, HttpSession session) {
		AJAXResult result = new AJAXResult();
		MD5 md5 = new MD5();
		admin.setAdminpswd(md5.getResult(admin.getAdminpswd()));
		try {
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
