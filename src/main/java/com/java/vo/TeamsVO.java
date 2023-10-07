package com.java.vo;

public class TeamsVO {
	
	private int id;
	private String name;
	private DepartmentVO deVO;
	
	public TeamsVO() {}
	public TeamsVO(int id, String name, DepartmentVO deVO) {
		this.id = id;
		this.name = name;
		this.deVO = deVO;
	}
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
	public DepartmentVO getDeVO() {
		return deVO;
	}
	public void setDeVO(DepartmentVO deVO) {
		this.deVO = deVO;
	}
	
	@Override
	public String toString() {
		return "TeamsVO [id=" + id + ", name=" + name + ", deVO=" + deVO + "]";
	}
}
