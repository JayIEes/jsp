package day0422;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class InfoDAO {

	private static InfoDAO inDAO;
	
	private InfoDAO() {
		
	}
	
	public static InfoDAO getInstance() {
		
		if(inDAO==null) {
			inDAO=new InfoDAO();
		}
		return inDAO;
	}
	
	
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
		boolean result=false;
		
		Connection con=getConnection();
		
		String selectId="select id from test_member where id=?";
		PreparedStatement pstmt=con.prepareStatement(selectId);
		pstmt.setString(1, id);
		ResultSet rs=pstmt.executeQuery();
		
		try(con;pstmt;rs) {
			
			result=rs.next();
			
		}//
		
		
		return result;
	}
	
	
}
