package xyz.freelp.lpdaohang.portal.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.freelp.lpdaohang.bean.Administrator;
import xyz.freelp.lpdaohang.bean.Page1a2;
import xyz.freelp.lpdaohang.bean.Page2;
import xyz.freelp.lpdaohang.bean.User;
import xyz.freelp.lpdaohang.portal.dao.AdminDao;
import xyz.freelp.lpdaohang.portal.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDao adminDao;
	@Override
	public Administrator queryLoginAdmin(Administrator admin) {
		return adminDao.queryLoginAdmin(admin);
	}
	
}
