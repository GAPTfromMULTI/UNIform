package com.common.service;
 
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
 
import org.springframework.stereotype.Service;
 
//
import com.common.dao.BoardDAO;
import com.common.dto.MemberVO;
 
@Service
public class BoardServiceImpl implements BoardService {
 
    @Inject
    private BoardDAO dao;
    
    @Override
    public List<Map<String,Object>> selectFormList(Map<String,Object> map) throws Exception {
        return dao.selectFormList(map);
    }
 
}
