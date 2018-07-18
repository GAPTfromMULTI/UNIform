package com.common.service;
 
import java.util.List;
 
import com.common.dto.MemberVO;
 
public interface MemberService {
    
    public List<MemberVO> selectMember() throws Exception;
}