package com.common.dao;
 
import java.util.List;
import java.util.Map;
 
//MemberVO대신 Map?
import com.common.dto.MemberVO;
 
public interface BoardDAO {
   
    public List<Map<String,Object>> selectFormList(Map<String,Object> map) throws Exception;
   }
 