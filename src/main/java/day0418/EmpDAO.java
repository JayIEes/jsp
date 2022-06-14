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
		
		
		//1.����̹� �ε�
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		//2.Ŀ�ؼ� ���
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String id="scott";
		String pass="tiger";
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con=DriverManager.getConnection(url,id,pass);
		//3.������ ������ü ���
			pstmt=con.prepareStatement("select empno,ename,job,sal,hiredate from emp order by hiredate");
		//4.���ε� ���� �� ����
			
		//5.�������� �� ��� ���
			rs=pstmt.executeQuery();
			EmpVO eVO=null;
			while(rs.next()) {
				eVO=new EmpVO(rs.getInt("empno"),rs.getInt("sal"),rs.getString("ename"),rs.getString("job"),
						rs.getDate("hiredate"));
				list.add(eVO);
			}//end while
			
		}finally {
		//6.���� ����
			if(rs!=null){rs.close();}
			if(pstmt!=null){pstmt.close();}
			if(con!=null){con.close();}
		}//end finally
		
		
		return list;
		
	}
}
