package xyz.freelp.lpdaohang.web.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
/**
 * 服务器启动监听器
 * @author admin
 *
 */
public class ServerStartupListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// 将web应用路径保存到APPlICATION范围中
		ServletContext application = sce.getServletContext();
		String appPath = application.getContextPath();
		application.setAttribute("APP_PATH", appPath);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub

	}

}
