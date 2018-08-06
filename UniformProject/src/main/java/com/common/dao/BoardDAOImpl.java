package com.common.dao;
 
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
 
//map?
import com.common.dto.MemberVO;
 
//MemberVO대신 map?
@Repository
public class BoardDAOImpl implements BoardDAO {
 
    @Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.example.mapper.postMapper";
    
    @Override
    public List<Map<String,Object>> selectFormList(Map<String,Object> map) throws Exception {
 
        return (List<Map<String,Object>>)(List)sqlSession.selectList("postinfo_query.selectFormList", map);
    }
 
}
