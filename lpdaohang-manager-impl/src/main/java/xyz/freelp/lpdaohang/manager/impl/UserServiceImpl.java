package xyz.freelp.lpdaohang.manager.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.freelp.lpdaohang.bean.Page1a2;
import xyz.freelp.lpdaohang.bean.Page2;
import xyz.freelp.lpdaohang.bean.User;
import xyz.freelp.lpdaohang.manager.dao.UserDao;
import xyz.freelp.lpdaohang.manager.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	@Override
	public User queryLoginUser(User user) {
		// TODO Auto-generated method stub
		return userDao.queryLoginUser(user);
	}
	
	@Override
	public User queryUserInfo(Integer id) {
		// TODO Auto-generated method stub
		return userDao.queryUserInfo(id);
	}

	@Override
	public List<Page1a2> queryInitDate() {
		// TODO Auto-generated method stub
		return userDao.queryInitDate();
	}

	@Override
	public List<Page2> queryLableName(Integer id) {
		// TODO Auto-generated method stub
		return userDao.queryLableName(id);
	}

	@Override
	public List<Page2> queryLable(Integer id) {
		// TODO Auto-generated method stub
		return userDao.queryLable(id);
	}

	@Override
	public Integer insterLableName(Integer id, String lablename) {
		return userDao.insterLableName(id,lablename);
	}

	@Override
	public Integer delLable(Integer lableid) {
		// TODO Auto-generated method stub
		return userDao.delLable(lableid);
	}

	@Override
	public Integer delWeb(Integer id, Integer lablename) {
		// TODO Auto-generated method stub
		return userDao.delWeb(id,lablename);
	}

	@Override
	public Integer updateLableName(Integer lableid, String lablename) {
		// TODO Auto-generated method stub
		return userDao.updateLableName(lableid,lablename);
	}

	@Override
	public Integer insterWeb(Integer id, Integer lablename, String weburl, String webname) {
		// TODO Auto-generated method stub
		return userDao.insterWeb(id,lablename,weburl,webname);
	}

	@Override
	public Integer updateWeb(Integer id, Integer lablename, Integer webid, String weburl, String webname) {
		// TODO Auto-generated method stub
		return userDao.updateWeb(id,lablename,webid,weburl,webname);
	}

	@Override
	public Integer delWebS(Integer id, Integer lablename, Integer webid) {
		// TODO Auto-generated method stub
		return userDao.delWebS(id,lablename,webid);
	}

	@Override
	public Integer updateUsername(Integer id,String username) {
		// TODO Auto-generated method stub
		return userDao.updateUsername(id,username);
	}

	@Override
	public Integer updateUseremail(Integer id, String useremail) {
		// TODO Auto-generated method stub
		return userDao.updateUseremail(id,useremail);
	}

	@Override
	public Integer updateUserpswd(Integer id, String userpswd) {
		// TODO Auto-generated method stub
		return userDao.updateUserpswd(id,userpswd);
	}

	@Override
	public User queryUsername(User user) {
		// TODO Auto-generated method stub
		return userDao.queryUsername(user);
	}

	@Override
	public User queryUseremail(User user) {
		// TODO Auto-generated method stub
		return userDao.queryUseremail(user);
	}

	@Override
	public Integer insterUser(User user) {
		// TODO Auto-generated method stub
		return userDao.insterUser(user);
	}

}
