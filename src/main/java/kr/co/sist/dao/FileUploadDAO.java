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
		//1. JNDI ��� ��ü ����
		Context ctx=new InitialContext();
		
		//2. DBCP�� ã�� DataSource ���
		DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/dbcp");
		
		//3. Ŀ�ؼ� ���
		con=ds.getConnection();
		
		}catch(NamingException ne) {
			ne.printStackTrace();
		}//end catch
		
		return con;
	}//getConnection
	
	
	
	
	/**
	 * ������ DBMS Table�� �������� �ʰ� ���ϸ� �����Ѵ�.
	 * @param ufVO
	 * @throws SQLException
	 */
	public void insertFile(UploadFileVO ufVO) throws SQLException{
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		try {
		
		//1. JNDI ��� ��ü ����
		//2. ���� DBCP���� DataSource ���
		//3. DataSource���� Connection ���
			con=getConnection();
			
		//4. ������ ���� ��ü ���
			String insertFile
			="insert into upload_file(num,name,original_name,file_system_name,ip_address,input_date) values(seq_file.nextval,?,?,?,?,sysdate)";
			
			pstmt=con.prepareStatement(insertFile);
			
		//5. ���̵� ���� �� ����
			pstmt.setString(1,ufVO.getName());
			pstmt.setString(2,ufVO.getOriginal_name());
			pstmt.setString(3,ufVO.getFile_system_name());
			pstmt.setString(4,ufVO.getIp_address());
			
		//6. ���� ���� �� ��� ���
			pstmt.executeUpdate();
			
		}finally{
		//7. �������
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
			//1. JNDI ��밴ü ����
			//2. DBCP���� DataSource ���
			//3. DataSource���� Connection ���
			con=getConnection();
			
			//4. ������ ���� ��ü ���
			String selectFile="select num,name,original_name,file_system_name,ip_address,to_char(input_date,'yyyy-mm-dd hh24:mi') input_date from upload_file";
			
			pstmt=con.prepareStatement(selectFile);
			
			//5. ���ε� ������ �� ���� 
			
			//6. ������ ���� �� ��� ���
			rs=pstmt.executeQuery();
			
			UploadFileVO ufVO=null;
			while(rs.next()) {
				ufVO=new UploadFileVO(rs.getInt("num"),rs.getString("name"),"",
						rs.getString("file_system_name"),rs.getString("ip_address"),
						rs.getString("input_date"));
				list.add(ufVO);
			}//end while
			
		}finally{
			//7. ���� ����
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





