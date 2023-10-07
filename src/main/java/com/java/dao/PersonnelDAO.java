package com.java.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vo.DepartmentVO;
import com.java.vo.EmployeesVO;
import com.java.vo.TeamsVO;

@Repository
public class PersonnelDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<DepartmentVO> departmentSelectList() {
		return sqlSession.selectList("personnel.departmentSelectList");
	}

	public List<TeamsVO> teamsSelectList() {
		return sqlSession.selectList("personnel.teamsSelectList");
	}

	public int insertEmployee(EmployeesVO emVO) {
		return sqlSession.insert("personnel.insertEmployee",emVO);
	}

	public List<EmployeesVO> employeeSelectList() {
		return sqlSession.selectList("personnel.employeeSelectList");
	}

	public EmployeesVO employeeSelectOne(int no) {
		return sqlSession.selectOne("personnel.employeeSelectOne", no);
	}

	public int modifyEmployee(EmployeesVO emVO) {
		return sqlSession.update("personnel.modifyEmployee",emVO);
	}

}
