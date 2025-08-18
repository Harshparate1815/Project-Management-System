package adm;

import java.io.Serializable;

public class ResultSetStudBeans implements Serializable{  // this is for Studreg table 

		 private String usrid ; 
		 private String name ;
		 private int ranked ;
		 private String tech ; 
		 private String sem ;
		 private String project_name ; 
			public void ResultSetBeans () {}
		
		public String getUsrid() {
			return usrid;
		}

		public void setUsrid(String usrid) {
			this.usrid = usrid;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public int getRanked() {
			return ranked;
		}

		public void setRanked(int ranked) {
			this.ranked = ranked;
		}

		public String getTech() {
			return tech;
		}

		public void setTech(String tech) {
			this.tech = tech;
		}

		public String getSem() {
			return sem;
		}

		public void setSem(String sem) {
			this.sem = sem;
		}

		public String getProject_name() {
			return project_name;
		}

		public void setProject_name(String project_name) {
			this.project_name = project_name;
		}

	

		
	
	
}
