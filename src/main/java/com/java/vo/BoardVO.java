package com.java.vo;

import java.sql.Date;

public class BoardVO {
	
	private int id;
	private String title;
	private String content;
	private EmployeesVO emVO;
	private Date regDate;
	
	public BoardVO() {}
	public BoardVO(int id, String title, String content, EmployeesVO emVO, Date regDate) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.emVO = emVO;
		this.regDate = regDate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public EmployeesVO getEmVO() {
		return emVO;
	}
	public void setEmVO(EmployeesVO emVO) {
		this.emVO = emVO;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "BoardVO [id=" + id + ", title=" + title + ", content=" + content + ", emVO=" + emVO + ", regDate="
				+ regDate + "]";
	}
	
}
