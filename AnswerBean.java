package harsh;

import java.io.*;
@SuppressWarnings("serial")

public class AnswerBean {
	private int score;
	private String uId;
	private String uName;
	private String uSubject;
	
	private String sem  ; 
	public AnswerBean() {}
	
	public String getSem() {
		return sem;
	}
	public void setSem(String sem) {
		this.sem = sem;
	}
	
		public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuSubject()
	{
		return uSubject;
	}
	public void setuSubject(String uSubject)
	{
		this.uSubject=uSubject;
	}
}
