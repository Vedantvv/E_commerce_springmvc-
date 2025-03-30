package com.ecom;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class Category {
	
	    private int id; 
	    private String name; 
	    private boolean isActive; 
	    private CommonsMultipartFile file;
		private String filename;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public boolean isActive() {
			return isActive;
		}
		public void setActive(boolean isActive) {
			this.isActive = isActive;
		}
		public CommonsMultipartFile getFile() {
			return file;
		}
		public void setFile(CommonsMultipartFile file) {
			this.file = file;
		}
		public String getFilename() {
			return filename;
		}
		public void setFilename(String filename) {
			this.filename = filename;
		}
		
		
		

}
