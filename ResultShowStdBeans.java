package adm;

import java.io.Serializable;

public class ResultShowStdBeans implements Serializable { // table resultstd 
		private int rank , marks ;
		private String name , project_name ;
						
		public ResultShowStdBeans() {}
		public int getRank() {
			return rank;
		}
		public void setRank(int rank) {
			this.rank = rank;
		}
		public int getMarks() {
			return marks;
		}
		public void setMarks(int marks) {
			this.marks = marks;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getProject_name() {
			return project_name;
		}
		public void setProject_name(String project_name) {
			this.project_name = project_name;
		}
		
}
