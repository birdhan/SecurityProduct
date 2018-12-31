package lin.snacks.pojo;

public class Vote {
	private String id;
	private String snacksid;
	private String uid;
	private String uname;
	private String type;
	private String vtime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSnacksid() {
		return snacksid;
	}
	public void setSnacksid(String snacksid) {
		this.snacksid = snacksid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String getVtime() {
		return vtime;
	}
	public void setVtime(String vtime) {
		this.vtime = vtime;
	}
	@Override
	public String toString() {
		return "Vote [id=" + id + ", snacksid=" + snacksid + ", uid=" + uid + ", uname=" + uname + ", type=" + type
				+ ", vtime=" + vtime + "]";
	}
	
	
}