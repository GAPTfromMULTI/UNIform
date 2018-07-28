package com.common.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

import javax.naming.NamingException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
 
@Repository
public class JoinMemberDAOImpl implements JoinMemberDAO{
     
    private static JoinMemberDAO instance;
    
    // 싱글톤 패턴
/*    private JoinMemberDAOImpl(){}
    public static JoinMemberDAO getInstance(){
        if(instance==null)
            instance=new JoinMemberDAOImpl();
        return instance;
    }*/
	
    @Autowired
    private SqlSession sql;

    @Override
    public void insertMember(LoginInfo loginInfo) throws Exception
    {
    	sql.insert("query.insertMember", loginInfo);
    }
       /* Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            // 커넥션을 가져온다.
            conn = sql.getConnection("insertMember",loginInfo);

            // 자동 커밋을 false로 한다.
            conn.setAutoCommit(false);
            
            // 쿼리 생성한다.
            // 가입일의 경우 자동으로 세팅되게 하기 위해 sysdate를 사용
            StringBuffer sql = new StringBuffer();
            sql.append("insert into JSP_MEMBER values");
            sql.append("(?, ?, ?, ?, ?, ?, ?, ?, sysdate)");        
            stringToDate(member);
             
             * StringBuffer에 담긴 값을 얻으려면 toString()메서드를
             * 이용해야 한다.
             
            sql.insert("insertMember", loginInfo);
            pstmt = sql.selectOne("insertMember", loginInfo);
            pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPassword());
            pstmt.setString(3, member.getName());
            pstmt.setString(4, member.getGender());
            pstmt.setDate(5, stringToDate(member));
            pstmt.setString(6, member.getMail1()+"@"+member.getMail2());
            pstmt.setString(7, member.getPhone());
            pstmt.setString(8, member.getAddress());
            
            // 쿼리 실행
            pstmt.executeUpdate();
            // 완료시 커밋
            conn.commit(); 
            
        } catch (ClassNotFoundException | NamingException | SQLException sqle) {
            // 오류시 롤백
            conn.rollback(); 
            
            throw new RuntimeException(sqle.getMessage());
        } finally {
            // Connection, PreparedStatement를 닫는다.
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        } // end try~catch 
    }*/ // end insertMember()

    /*public void insertMember(LoginInfo loginInfo){
    	int overlap = Integer.parseInt(sql.selectOne("insertMember", loginInfo).toString());
         
        
    }*/
}