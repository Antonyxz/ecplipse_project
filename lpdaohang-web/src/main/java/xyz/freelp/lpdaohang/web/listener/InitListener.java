package xyz.freelp.lpdaohang.web.listener;

import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import xyz.freelp.lpdaohang.bean.Page1a3;
import xyz.freelp.lpdaohang.manager.service.UserService;
//初始化数据，将常用数据放入application中
public class InitListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext());
		UserService userService = (UserService) ac.getBean("userServiceImpl");
		List<Page1a3> initDate = userService.queryInitDate();
		sce.getServletContext().setAttribute("page1a3", initDate);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub

	}

}
