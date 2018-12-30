package lin.snacks.pojo;

public class Order {
	private String id;
	private String uid;
	private String sid;
	private String sname;
	private String spic;
	private String ostatus;
	private String owd;
	private String onumber;
	private String uaddress;
	private String utel;
	private String uname;
	private String number;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSpic() {
		return spic;
	}
	public void setSpic(String spic) {
		this.spic = spic;
	}
	public String getOstatus() {
		return ostatus;
	}
	public void setOstatus(String ostatus) {
		this.ostatus = ostatus;
	}
	public String getOwd() {
		return owd;
	}
	public void setOwd(String owd) {
		this.owd = owd;
	}
	public String getOnumber() {
		return onumber;
	}
	public void setOnumber(String onumber) {
		this.onumber = onumber;
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	public String getUtel() {
		return utel;
	}
	public void setUtel(String utel) {
		this.utel = utel;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", uid=" + uid + ", sid=" + sid + ", sname=" + sname + ", spic=" + spic
				+ ", ostatus=" + ostatus + ", owd=" + owd + ", onumber=" + onumber + ", uaddress=" + uaddress
				+ ", utel=" + utel + ", uname=" + uname + ", number=" + number + "]";
	}
	
}
