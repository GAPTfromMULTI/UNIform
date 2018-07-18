package com.common.dao;
 
import java.util.List;
 
import com.common.dto.MemberVO;
 
public interface MemberDAO {
    
    public List<MemberVO> selectMember() throws Exception;
}
