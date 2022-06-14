package day0418;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmpDAO {
	
	public List<EmpVO> selectAllEmp() throws SQLException{
		
		List<EmpVO> list=new ArrayList<EmpVO>();
		
		
		//1.드라이버 로딩
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		//2.커넥션 얻기
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String id="scott";
		String pass="tiger";
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con=DriverManager.getConnection(url,id,pass);
		//3.쿼리문 생성객체 얻기
			pstmt=con.prepareStatement("select empno,ename,job,sal,hiredate from emp order by hiredate");
		//4.바인드 변수 값 설정
			
		//5.쿼리수행 후 결과 얻기
			rs=pstmt.executeQuery();
			EmpVO eVO=null;
			while(rs.next()) {
				eVO=new EmpVO(rs.getInt("empno"),rs.getInt("sal"),rs.getString("ename"),rs.getString("job"),
						rs.getDate("hiredate"));
				list.add(eVO);
			}//end while
			
		}finally {
		//6.연결 끊기
			if(rs!=null){rs.close();}
			if(pstmt!=null){pstmt.close();}
			if(con!=null){con.close();}
		}//end finally
		
		
		return list;
		
	}
}
