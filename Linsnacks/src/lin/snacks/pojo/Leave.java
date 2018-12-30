package lin.snacks.pojo;

public class Leave {
	private String id;
	private String snacksid;
	private String uid;
	private String uname;
	private String message;
	private String status;
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
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Leave [id=" + id + ", snacksid=" + snacksid + ", uid=" + uid + ", uname=" + uname + ", message="
				+ message + ", status=" + status + "]";
	}
	
}
