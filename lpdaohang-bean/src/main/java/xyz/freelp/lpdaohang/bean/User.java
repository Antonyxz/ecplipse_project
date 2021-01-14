package xyz.freelp.lpdaohang.bean;

public class User {
	private Integer id;
	private String username;
	private String userpswd;
	private String userinvitecode;
	private String inviteusercode;
	private String useremail;
	public String getUserinvitecode() {
		return userinvitecode;
	}
	public void setUserinvitecode(String userinvitecode) {
		this.userinvitecode = userinvitecode;
	}
	public String getInviteusercode() {
		return inviteusercode;
	}
	public void setInviteusercode(String inviteusercode) {
		this.inviteusercode = inviteusercode;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpswd() {
		return userpswd;
	}
	public void setUserpswd(String userpswd) {
		this.userpswd = userpswd;
	}
}
