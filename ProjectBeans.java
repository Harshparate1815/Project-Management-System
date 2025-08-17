package adm;

import java.io.Serializable;

public class ProjectBeans implements Serializable {
	
	private int rank ;
	private String name_project; 
	private String sem , tech ;
	public String getSem() {
		return sem;
	}
	public void setSem(String sem) {
		this.sem = sem;
	}
	public String getTech() {
		return tech;
	}
	public void setTech(String tech) {
		this.tech = tech;
	}
	public ProjectBeans () {}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getName_project() {
		return name_project;
	}
	public void setName_project(String name_project) {
		this.name_project = name_project;
	}

}
