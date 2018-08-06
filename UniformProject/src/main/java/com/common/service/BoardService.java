package com.common.service;
 
import java.util.List;
import java.util.Map;

//map?
import com.common.dto.MemberVO;
 
public interface BoardService {
    
    public List<Map<String,Object>> selectFormList(Map<String,Object> map) throws Exception;
}