package xyz.freelp.lpdaohang.manager.service;

import java.util.List;

import xyz.freelp.lpdaohang.bean.Page1a2;
import xyz.freelp.lpdaohang.bean.Page2;
import xyz.freelp.lpdaohang.bean.User;

public interface UserService {
	User queryLoginUser(User user);
	User queryUsername(User user);
	User queryUseremail(User user);
	User queryUserInfo(Integer id);
	List<Page1a2> queryInitDate();
	List<Page2> queryLableName(Integer id);
	List<Page2> queryLable(Integer id);
	Integer insterLableName(Integer id, String lablename);
	Integer delLable(Integer lableid);
	Integer delWeb(Integer id, Integer lablename);
	Integer updateLableName(Integer lableid, String lablename);
	Integer insterWeb(Integer id, Integer lablename, String weburl, String webname);
	Integer updateWeb(Integer id, Integer lablename, Integer webid, String weburl, String webname);
	Integer delWebS(Integer id, Integer lablename,Integer wenid);
	Integer updateUsername(Integer id,String username);
	Integer updateUseremail(Integer id,String useremail);
	Integer updateUserpswd(Integer id,String userpswd);
	Integer insterUser(User user);
}
