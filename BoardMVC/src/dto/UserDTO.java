package dto;

public class UserDTO {
	
	String uID = "";
	String uPW = "";
	String uName = "";
	String uGender = "";
	String uEmail = "";
	
	public UserDTO(String uID, String uPW, String uName, String uGender, String uEmail) {
		
		this.uID = uID;
		this.uPW = uPW;
		this.uName = uName;
		this.uGender = uGender;
		this.uEmail = uEmail;
		
	}
	
	public String getuID() {
		return uID;
	}
	public void setuID(String uID) {
		this.uID = uID;
	}
	public String getuPW() {
		return uPW;
	}
	public void setuPW(String uPW) {
		this.uPW = uPW;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuGender() {
		return uGender;
	}
	public void setuGender(String uGender) {
		this.uGender = uGender;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
}
