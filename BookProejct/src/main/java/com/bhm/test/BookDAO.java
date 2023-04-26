package com.bhm.test;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int insert(Map<String, Object> map) {
		return this.sqlSessionTemplate.insert("book.insert", map);
	}

	public Map<String, Object> detail(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectOne("book.detail", map);
	}

	public int update(Map<String, Object> map) {
		return this.sqlSessionTemplate.update("book.update", map);
	}

	public int delete(Map<String, Object> map) {
		return this.sqlSessionTemplate.delete("book.delete", map);
	}

	public List<Map<String, Object>> list(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectList("book.list", map);
	}

}