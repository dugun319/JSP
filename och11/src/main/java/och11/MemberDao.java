package och11;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDao {
	
	private Connection getConnection() throws SQLException {
		Connection conn = null;
		
		try {
			Context ctx		= new InitialContext();
			DataSource ds	= (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn			= ds.getConnection();
		} catch (NamingException e) {
			System.out.println("e.getMessage() -> " + e.getMessage());
		}
		
		return conn;
	}
	
	public int insert(MemberDto member) throws SQLException {
		
		Connection conn = this.getConnection();
		
		String sql = 
				"INSERT INTO scott.member1 (id, password, name, reg_date) VALUES (?, ?, ?, sysdate)"; 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, member.getId());
		pstmt.setString(2, member.getPassword());
		pstmt.setString(3, member.getName());
		
		int result = pstmt.executeUpdate();
		
		conn.close();
		pstmt.close();
	
		return result;
	}
}
