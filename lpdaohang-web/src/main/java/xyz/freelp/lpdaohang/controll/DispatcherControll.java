package xyz.freelp.lpdaohang.controll;


import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Utli.InviteCodeUtil;
import Utli.MD5;
import xyz.freelp.lpdaohang.bean.AJAXResult;
import xyz.freelp.lpdaohang.bean.AJAXResult2;
import xyz.freelp.lpdaohang.bean.Page1a2;
import xyz.freelp.lpdaohang.bean.Page2;
import xyz.freelp.lpdaohang.bean.User;
import xyz.freelp.lpdaohang.manager.service.UserService;


@Controller
public class DispatcherControll {

	@Autowired
	private UserService userService;
	//进入首页
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	//进入登陆页
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	//进入注册页
	@RequestMapping("/sign")
	public String sign() {
		return "sign";
	}
	//进入个人信息页
	@RequestMapping("/userinfo")
	public ModelAndView userinfo(HttpServletRequest request) {
		HttpSession session = request.getSession();
		try {
			User user = (User)session.getAttribute("userinfo");
			Integer id = user.getId();
			User users = userService.queryUserInfo(id);
			return new ModelAndView("userinfo", "users", users);
		}catch (Exception e) {
			return new ModelAndView("index", "users", null);
		}
	}
	//退出登陆
	@RequestMapping("/execute")
	public String execute(HttpSession session) {
		session.invalidate();
		return "index";
	}
	//登陆校验
	@ResponseBody
	@RequestMapping("/dologin")
	public Object dologin(User user, HttpSession session) {
		AJAXResult result = new AJAXResult();
		MD5 md5 = new MD5();
		user.setUserpswd(md5.getResult(user.getUserpswd()));
		try {
			User dbUser = userService.queryLoginUser(user);
			if(dbUser == null) {
				result.setSuccess(false);
			}else {
				session.setAttribute("userinfo", dbUser);
				result.setSuccess(true);
				//加入用户个人配置
				//获取标签信息
				List<Page2> lableName = userService.queryLableName(dbUser.getId());
				//获取标签内容
				List<Page2> lable = userService.queryLable(dbUser.getId());
				session.setAttribute("lablename", lableName);
				session.setAttribute("lable", lable);
			}
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
		}
		return result;
	}
	//注册账号
	@ResponseBody
	@RequestMapping("/dosign")
	public Object dosign(User user, HttpSession session) {
		AJAXResult2 result = new AJAXResult2();
		InviteCodeUtil inv = new InviteCodeUtil();
		MD5 md5 = new MD5();
		try {
			User dbUser1 = userService.queryUsername(user);
			User dbUser2 = userService.queryUseremail(user);
			if(dbUser1 != null && dbUser2 != null) {
				result.setCodetype(2); //用户名，邮箱都已存在
			}else if(dbUser1 != null && dbUser2 == null){
				result.setCodetype(3); //用户名已存在
			}else if(dbUser1 == null && dbUser2 != null){
				result.setCodetype(4); //邮箱已存在
			}else{
				user.setUserpswd(md5.getResult(user.getUserpswd()));
				user.setInviteusercode(inv.genRandomNum());
				Integer rid = userService.insterUser(user);
				if(rid == null) {
					result.setCodetype(0); //添加失败
				}else {
					result.setCodetype(1); //添加成功
					User dbUser = userService.queryLoginUser(user);
					session.setAttribute("userinfo", dbUser);
					//加入用户个人配置
					//获取标签信息
					List<Page2> lableName = userService.queryLableName(dbUser.getId());
					//获取标签内容
					List<Page2> lable = userService.queryLable(dbUser.getId());
					session.setAttribute("lablename", lableName);
					session.setAttribute("lable", lable);
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
			result.setCodetype(0);
		}
		return result;
	}
	//修改用户名
	@ResponseBody
	@RequestMapping("/doCheUsername")
	public Object doCheUsername(User user, HttpSession session) {
		AJAXResult2 result = new AJAXResult2();
		try {
			User dbUser = userService.queryUsername(user);
			if(dbUser == null) {
				User huser = (User)session.getAttribute("userinfo");
				Integer id = huser.getId();
				try {
					Integer num = userService.updateUsername(id,user.getUsername());
					if(num == null) {
						result.setCodetype(0);
					}else {
						result.setCodetype(1);
					}
				}catch(Exception e) {
					e.printStackTrace();
					result.setCodetype(0);
				}
				return result;
			}else {
				result.setCodetype(6);
				return result;
			}
		}catch (Exception e) {
			e.printStackTrace();
			result.setCodetype(0);
		}
		return result;
	}
	//修改邮箱
	@ResponseBody
	@RequestMapping("/doCheUseremail")
	public Object doCheUseremail(User user, HttpSession session) {
		AJAXResult2 result = new AJAXResult2();
		try {
			User dbUser = userService.queryUseremail(user);
			if(dbUser == null) {
				User huser = (User)session.getAttribute("userinfo");
				Integer id = huser.getId();
				try {
					Integer num = userService.updateUseremail(id, user.getUseremail());
					if(num == null) {
						result.setCodetype(0);
					}else {
						result.setCodetype(1);
					}
				}catch(Exception e) {
					e.printStackTrace();
					result.setCodetype(0);
				}
				return result;
			}else {
				result.setCodetype(6);
				return result;
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}
	//修改密码
	@ResponseBody
	@RequestMapping("/doCheUserpswd")
	public Object doCheUserpswd(User user, HttpSession session) {
		AJAXResult result = new AJAXResult();
		MD5 md5 = new MD5();
		User huser = (User)session.getAttribute("userinfo");
		Integer id = huser.getId();
		try {
			Integer num = userService.updateUserpswd(id, md5.getResult(user.getUserpswd()));
			if(num == null) {
				result.setSuccess(false);
			}else {
				result.setSuccess(true);
			}
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
		}
		return result;
	}
	//用户添加标签
	@ResponseBody
	@RequestMapping("/doPlus")
	public Object doPlus(Page2 page2, HttpSession session) {
		AJAXResult result = new AJAXResult();
		User user = (User)session.getAttribute("userinfo");
		Integer id = user.getId();
		try {
			Integer rid = userService.insterLableName(id, page2.getLablename());
			if(rid == null) {
				result.setSuccess(false);
			}else {
				result.setSuccess(true);
				//刷新用户个人配置
				//获取标签信息
				List<Page2> lableName = userService.queryLableName(id);
				//获取标签内容
				List<Page2> lable = userService.queryLable(id);
				session.setAttribute("lablename", lableName);
				session.setAttribute("lable", lable);
			}
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
		}
		return result;
	}
	//用户删除标签
	@ResponseBody
	@RequestMapping("/doDel")
	public Object doDel(Page2 page2, HttpSession session) {
		AJAXResult result = new AJAXResult();
		User user = (User)session.getAttribute("userinfo");
		Integer id = user.getId();
		try {
			Integer rid = userService.delLable(page2.getLableid());
			if(rid == null) {
				result.setSuccess(false);
			}else {
				result.setSuccess(true);
				//删除标签对应web
				Integer ridd = userService.delWeb(id, page2.getLableid());
				//刷新用户个人配置
				//获取标签信息
				List<Page2> lableName = userService.queryLableName(id);
				//获取标签内容
				List<Page2> lable = userService.queryLable(id);
				session.setAttribute("lablename", lableName);
				session.setAttribute("lable", lable);
			}
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
		}
		return result;
	}
	//用户修改标签
	@ResponseBody
	@RequestMapping("/doChe")
	public Object doChe(Page2 page2, HttpSession session) {
		AJAXResult result = new AJAXResult();
		User user = (User)session.getAttribute("userinfo");
		Integer id = user.getId();
		try {
			Integer rid = userService.updateLableName(page2.getLableid(), page2.getLablename());
			if(rid == null) {
				result.setSuccess(false);
			}else {
				result.setSuccess(true);
				//刷新用户个人配置
				//获取标签信息
				List<Page2> lableName = userService.queryLableName(id);
				//获取标签内容
				List<Page2> lable = userService.queryLable(id);
				session.setAttribute("lablename", lableName);
				session.setAttribute("lable", lable);
			}
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
		}
		return result;
	}
	//添加用户web
	@ResponseBody
	@RequestMapping("/doPul")
	public Object doPul(Page2 page2, HttpSession session) {
		AJAXResult result = new AJAXResult();
		User user = (User)session.getAttribute("userinfo");
		Integer id = user.getId();
		try {
			Integer rid = userService.insterWeb(id, page2.getLableid(), page2.getWeburl(), page2.getWebname());
			if(rid == null) {
				result.setSuccess(false);
			}else {
				result.setSuccess(true);
				//刷新用户个人配置
				//获取标签内容
				List<Page2> lable = userService.queryLable(id);
				session.setAttribute("lable", lable);
			}
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
		}
		return result;
	}
	//修改用户web
	@ResponseBody
	@RequestMapping("/doChel")
	public Object doChel(Page2 page2, HttpSession session) {
		AJAXResult result = new AJAXResult();
		User user = (User)session.getAttribute("userinfo");
		Integer id = user.getId();
		try {
			Integer rid = userService.updateWeb(id, page2.getLableid(), page2.getWebid(), page2.getWeburl(), page2.getWebname());
			if(rid == null) {
				result.setSuccess(false);
			}else {
				result.setSuccess(true);
				//刷新用户个人配置
				//获取标签内容
				List<Page2> lable = userService.queryLable(id);
				session.setAttribute("lable", lable);
			}
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
		}
		return result;
	}
	//修改用户web
	@ResponseBody
	@RequestMapping("/doDell")
	public Object doDell(Page2 page2, HttpSession session) {
		AJAXResult result = new AJAXResult();
		User user = (User)session.getAttribute("userinfo");
		Integer id = user.getId();
		try {
			Integer rid = userService.delWebS(id, page2.getLableid(), page2.getWebid());
			if(rid == null) {
				result.setSuccess(false);
			}else {
				result.setSuccess(true);
				//刷新用户个人配置
				//获取标签内容
				List<Page2> lable = userService.queryLable(id);
				session.setAttribute("lable", lable);
			}
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
		}
		return result;
	}
}
