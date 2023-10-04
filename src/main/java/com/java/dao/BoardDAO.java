package com.java.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.java.vo.BoardVO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSession sqlsession;

	public int writeAction(BoardVO boVO) {
		return sqlsession.insert("board.boardInsert",boVO);
	}

	public List<BoardVO> getBoardList() {
		return sqlsession.selectList("board.boardSelectList");
	}

	public BoardVO boardSelectOne(int id) {
		return sqlsession.selectOne("board.boardSelectOne", id);
	}
	
}
