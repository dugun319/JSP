package och12;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

//singleton + DBCP
public class MemberDao {
	private static MemberDao instance;
	
	private MemberDao() {
	}

	//singleton
	public  static MemberDao getInstance() {
		if(instance == null) {
			instance = new MemberDao();
		}
		return instance;
	}

	// DBCP
	private Connection getConnection() {
		Connection conn = null;
		
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return conn;
	}

	public int check(String id, String passwd) throws SQLException {
		int result  = 0;  				
		Connection conn = null;
		String sql  = "SELECT password FROM member1 WHERE id=?"; 
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		
		try { 
			conn  = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			// id OK
			if (rs.next()) {
				String dbPasswd = rs.getString(1);
				if (dbPasswd.equals(passwd)) {
					result = 1;
				} else {
					result = 0;
				}
			} else {
				result = -1;
			}
		} catch(Exception e) { 
			System.out.println(e.getMessage());
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		return result;
	}	
	
	public int insert(Member member) throws SQLException {
		int result = 0;		
		Connection conn = null;
		String sql  = "INSERT INTO member1 (id, password, name, reg_date, address, phone)"
				+ "VALUES(?, ?, ?, sysdate, ?, ?)"; 
		PreparedStatement pstmt = null;
		
		try {
			conn 	= this.getConnection();
			pstmt 	= conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getAddress());
			pstmt.setString(5, member.getTel());
			
			result = pstmt.executeUpdate();			
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			if(conn != null) {
				conn.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
		}				
		return result;
	}
	
	public int confirm(String id) throws SQLException {
		int result 				= 0;	
		Connection conn 		= null;
		String sql  			= "SELECT id FROM member1 WHERE id=?"; 
		PreparedStatement pstmt = null;
		ResultSet rs 			= null;
		
		try {
			conn 	= this.getConnection();
			pstmt 	= conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs	  	= pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}else {
				System.out.println("ID CHECK!");
				result = 0;
			}			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if(conn != null) {
				conn.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
			if(rs != null) {
				rs.close();
			}
		}		
		return result;
	}
	
	public List<Member> list() throws SQLException{
		List<Member> list = new ArrayList<Member>();
		
		Connection conn 		= null;
		String sql  			= "SELECT * FROM member1"; 
		PreparedStatement pstmt	= null;
		ResultSet rs			= null;
		
		try {
			conn = this.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs	 = pstmt.executeQuery();
			
			if(rs.next()) {
				do{
					Member member	= new Member();
					member.setId(rs.getString(1));
					member.setPasswd(rs.getString(2));
					member.setName(rs.getString(3));
					member.setReg_date(rs.getDate(4));
					member.setAddress(rs.getString(5));
					member.setTel(rs.getString(6));
										
					list.add(member);
				}while(rs.next());
			}			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if(conn != null) {
				conn.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
			if(rs != null) {
				rs.close();
			}
		}		
		
		return list;
	}
	
	public Member select(String id) throws SQLException {
		Member member 			= new Member();		
		Connection conn 		= null;
		String sql  			= "SELECT * FROM member1 WHERE id=?"; 
		PreparedStatement pstmt			= null;
		ResultSet rs			= null;
		
		try {
			conn = this.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs	 = pstmt.executeQuery();
			
			if(rs.next()) {
				member.setId(rs.getString(1));
				member.setPasswd(rs.getString(2));
				member.setName(rs.getString(3));
				member.setReg_date(rs.getDate(4));
				member.setAddress(rs.getString(5));
				member.setTel(rs.getString(6));				
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if(conn != null) {
				conn.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
			if(rs != null) {
				rs.close();
			}
		}		
		
		return member;
	}
	
	
	public int update(Member member) throws SQLException {
		int result = 0;
		
		Connection conn 		= null;
		String sql  			= 
				"UPDATE member1 SET name=?, password=?, address=?, phone=?, reg_date=sysdate WHERE id =?";
		System.out.println("sql -> " + sql);
		PreparedStatement pstmt	= null;
		
		try {
			conn 	= this.getConnection();
			pstmt	= conn.prepareStatement(sql);
			pstmt.setString(1, member.getName());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getAddress());
			pstmt.setString(4, member.getTel());
			pstmt.setString(5, member.getId());			
			result = pstmt.executeUpdate();			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if(conn != null) {
				conn.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
		}		
		return result;
	}
	
	public int delete(String id, String password) throws SQLException {
		int result = 0;
		
		Connection conn 		= null;
		String sql  			= "DELETE FROM member1 WHERE id = ?";
		PreparedStatement pstmt = null;
		
		try {
			
			result 	= this.check(id, password);
			conn	= this.getConnection();
			pstmt	= conn.prepareStatement(sql);
			pstmt.setString(1, id);
			switch(result) {
				case 1  :
					pstmt.executeUpdate();
					System.out.println("SQL -> " + sql);
					System.out.println("DELET is Completed");
					break;
				case -1 :
					System.out.println("CHECK ID and PASSWORD");
					break;
				default :
					System.out.println("CHECK PASSWORD");
					break;
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if(conn != null) {
				conn.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
		}
		return result;
	}
	
}
