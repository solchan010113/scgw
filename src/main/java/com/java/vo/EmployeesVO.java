package com.java.vo;

import java.sql.Date;

public class EmployeesVO {
	
	private int no;
	private String name;
	private String hp;
	private String address;
	private Date hireDate;
	private Date birth;
	private TeamsVO teVO;
	private String id;
	private String pwd;
	private String img;
	private String position;
	
	public EmployeesVO() {}

	public EmployeesVO(int no, String name, String hp, String address, Date hireDate, TeamsVO teVO, String id,
			String pwd, String img, String position, Date birth) {
		this.no = no;
		this.name = name;
		this.hp = hp;
		this.address = address;
		this.hireDate = hireDate;
		this.birth = birth;
		this.teVO = teVO;
		this.id = id;
		this.pwd = pwd;
		this.img = img;
		this.position = position;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getHireDate() {
		return hireDate;
	}

	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}

	public TeamsVO getTeVO() {
		return teVO;
	}

	public void setTeVO(TeamsVO teVO) {
		this.teVO = teVO;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}
	
	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	@Override
	public String toString() {
		return "EmployeesVO [no=" + no + ", name=" + name + ", hp=" + hp + ", address=" + address + ", hireDate="
				+ hireDate + ", teVO=" + teVO + ", id=" + id + ", pwd=" + pwd + ", img=" + img + ", position="
				+ position + "birth=" + birth +"]";
	}
	
	
	
}
