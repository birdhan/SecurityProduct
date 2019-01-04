package lin.snacks.pojo;
	
	public class Snack {
		private String id;
		private String name;
		private String title;
		private String describese;
		private String special;
		private String designer;
		private String picture;
		private String uptime;
		private String upsize;
		private String type;
		private String status;
		private String price;
		private String chickrate;
		private String inventory;
	
		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getDescribese() {
			return describese;
		}

		public void setDescribese(String describese) {
			this.describese = describese;
		}

		public String getSpecial() {
			return special;
		}

		public void setSpecial(String special) {
			this.special = special;
		}

		public String getDesigner() {
			return designer;
		}

		public void setDesigner(String designer) {
			this.designer = designer;
		}

		public String getPicture() {
			return picture;
		}

		public void setPicture(String picture) {
			this.picture = picture;
		}

		public String getUptime() {
			return uptime;
		}

		public void setUptime(String uptime) {
			this.uptime = uptime;
		}

		public String getUpsize() {
			return upsize;
		}

		public void setUpsize(String upsize) {
			this.upsize = upsize;
		}

		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public String getPrice() {
			return price;
		}

		public void setPrice(String price) {
			this.price = price;
		}

		public String getChickrate() {
			return chickrate;
		}

		public void setChickrate(String chickrate) {
			this.chickrate = chickrate;
		}

		public String getInventory() {
			return inventory;
		}

		public void setInventory(String inventory) {
			this.inventory = inventory;
		}

		@Override
		public String toString() {
			return "Snack [id=" + id + ", name=" + name + ", title=" + title + ", describe=" + describese + ", special="
					+ special + ", designer=" + designer + ", picture=" + picture + ", uptime=" + uptime + ", upsize="
					+ upsize + ", type=" + type + ", status=" + status + ", price=" + price + ", chickrate=" + chickrate
					+ ", inventory=" + inventory + "]";
		}
		
	
	}
