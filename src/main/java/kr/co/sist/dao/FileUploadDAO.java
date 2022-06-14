package kr.co.sist.dao;

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

public class FileUploadDAO {

	private static FileUploadDAO fDAO;
	
	
	private FileUploadDAO() {
		
	}
	
	
	public static FileUploadDAO getInstance() {
		if(fDAO==null) {
			fDAO=new FileUploadDAO();
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
	
	
	
	
	/**
	 * 파일을 DBMS Table에 저장하지 않고 파일명만 저장한다.
	 * @param ufVO
	 * @throws SQLException
	 */
	public void insertFile(UploadFileVO ufVO) throws SQLException{
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		try {
		
		//1. JNDI 사용 객체 생성
		//2. 설정 DBCP에서 DataSource 얻기
		//3. DataSource에서 Connection 얻기
			con=getConnection();
			
		//4. 쿼리문 생성 객체 얻기
			String insertFile
			="insert into upload_file(num,name,original_name,file_system_name,ip_address,input_date) values(seq_file.nextval,?,?,?,?,sysdate)";
			
			pstmt=con.prepareStatement(insertFile);
			
		//5. 바이드 변수 값 설정
			pstmt.setString(1,ufVO.getName());
			pstmt.setString(2,ufVO.getOriginal_name());
			pstmt.setString(3,ufVO.getFile_system_name());
			pstmt.setString(4,ufVO.getIp_address());
			
		//6. 뭐리 수행 후 결과 얻기
			pstmt.executeUpdate();
			
		}finally{
		//7. 연결끊기
			dbClose(null, pstmt, con);
		}
		
	}//insertFile
	
	
	@SuppressWarnings("unused")
	public List<UploadFileVO> selectList() throws SQLException{
		List<UploadFileVO> list=new ArrayList<UploadFileVO>();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			//1. JNDI 사용객체 생성
			//2. DBCP에서 DataSource 얻기
			//3. DataSource에서 Connection 얻기
			con=getConnection();
			
			//4. 쿼리문 생성 객체 얻기
			String selectFile="select num,name,original_name,file_system_name,ip_address,to_char(input_date,'yyyy-mm-dd hh24:mi') input_date from upload_file";
			
			pstmt=con.prepareStatement(selectFile);
			
			//5. 바인드 변수에 값 설정 
			
			//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
			
			UploadFileVO ufVO=null;
			while(rs.next()) {
				ufVO=new UploadFileVO(rs.getInt("num"),rs.getString("name"),"",
						rs.getString("file_system_name"),rs.getString("ip_address"),
						rs.getString("input_date"));
				list.add(ufVO);
			}//end while
			
		}finally{
			//7. 연결 끊기
			dbClose(rs, pstmt, con);
		}//end finally
		
		return list;
	}
	
	
	
	
	
	public void dbClose(ResultSet rs, PreparedStatement pstmt, Connection con) throws SQLException{
		if(rs!=null) {rs.close();}//end if
		if(pstmt!=null) {pstmt.close();}//end if
		if(con!=null) {con.close();}//end if
	}//dbClose
	
}//class





