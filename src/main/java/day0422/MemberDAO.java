package day0422;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import kr.co.sist.vo.UploadFileVO;

public class MemberDAO {

	private static MemberDAO fDAO;
	
	
	private MemberDAO() {
		
	}
	
	
	public static MemberDAO getInstance() {
		if(fDAO==null) {
			fDAO=new MemberDAO();
		}//end if
		return fDAO;
	}//getInstance
	
	
	
	private Connection getConnection() throws SQLException{
		Connection con=null;
		
		try {
		//1. JNDI 사용 객체 생성
		Context ctx=new InitialContext();
		
		//2. DBCP를 찾아 DataSource 얻기
		DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/dbcp");
		
		//3. 커넥션 얻기
		con=ds.getConnection();
		
		}catch(NamingException ne) {
			ne.printStackTrace();
		}//end catch
		
		return con;
	}//getConnection
	
	

	public boolean selectID(String id) throws SQLException{
		boolean flag=false;
		
		Connection con=getConnection();
		
		String selectId="select id from test_member where id='"+id+"'";
		PreparedStatement pstmt=con.prepareStatement(selectId);
		ResultSet rs=pstmt.executeQuery();
		
		try(con;pstmt;rs) {
			
				flag=rs.next();
			
			
		}//
		
		
		return flag;
	}
	
	
	
	
	
	
	public void dbClose(ResultSet rs, PreparedStatement pstmt, Connection con) throws SQLException{
		if(rs!=null) {rs.close();}//end if
		if(pstmt!=null) {pstmt.close();}//end if
		if(con!=null) {con.close();}//end if
	}//dbClose
	
}//class





