package och15;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDao {
	
	//singleton + DBCP
	private	static MemberDao instance;
	
	private MemberDao() {		
		
	}
	
	public static MemberDao getInstance() {
		if(instance == null) {
			instance = new MemberDao();
		}
		return instance;
	}
	
	private Connection getConnection() throws SQLException {
		
		Connection conn = null;

		try {
			Context ctx		= new InitialContext();
			DataSource ds	= (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			System.out.println(ds);
			conn			= ds.getConnection();
			System.out.println("CALL getConnection()");
			
		} catch (NamingException e) {
			e.printStackTrace();
		}
		return conn;		
	}

 private Connection getConnection3() throws SQLException  {
	Connection conn = null;
			   
	try {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();

	} catch (NamingException e) {
			// TODO Auto-generated catch block
		e.printStackTrace();
	}
	    return conn;
}
	
	
	
	
	
	public int confirm(String id) throws SQLException {
		int result 				= 1;
		String sql 				= "SELECT id FROM member1 WHERE id = ?";
		Connection conn 		= null; 
		PreparedStatement pstmt = null;
		ResultSet rs 			= null;
		
		try {
			conn 	= this.getConnection();
			pstmt	= conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs		= pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}else {
				result = 0;
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if(rs != null) {
				rs.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}	
		return result;
	}
}
