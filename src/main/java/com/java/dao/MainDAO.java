package com.java.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vo.EmployeesVO;

@Repository
public class MainDAO {
	
	@Autowired
	SqlSession sqlSession;

	public EmployeesVO loginAction(EmployeesVO emVO) {
		return sqlSession.selectOne("main.loginAction",emVO);
	}

}
