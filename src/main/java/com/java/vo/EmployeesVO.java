package com.java.vo;

import java.sql.Date;

public class EmployeesVO {
	
	private int no;
	private String name;
	private String hp;
	private String address;
	private Date hireDate;
	private int salary;
	private DepartmentVO deVO;
	private String id;
	private String pwd;
	
	public EmployeesVO() {}
	public EmployeesVO(int no, String name, String hp, String address, Date hireDate, int salary, DepartmentVO deVO,
			String id, String pwd) {
		this.no = no;
		this.name = name;
		this.hp = hp;
		this.address = address;
		this.hireDate = hireDate;
		this.salary = salary;
		this.deVO = deVO;
		this.id = id;
		this.pwd = pwd;
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

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public DepartmentVO getDeVO() {
		return deVO;
	}

	public void setDeVO(DepartmentVO deVO) {
		this.deVO = deVO;
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

	@Override
	public String toString() {
		return "EmployeesVO [no=" + no + ", name=" + name + ", hp=" + hp + ", address=" + address + ", hireDate="
				+ hireDate + ", salary=" + salary + ", deVO=" + deVO + ", id=" + id + ", pwd=" + pwd + "]";
	}
	
}
