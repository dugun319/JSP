package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDao {
	private static BoardDao instance;
	
	private BoardDao() {		
	}
	
	public static BoardDao getInstance() {
		if(instance == null) {
			instance = new BoardDao();
		}		
		return instance;
	}
	
	private Connection getConnecction() {
		
		Connection conn = null;
		
		try {
			Context ctx 	= new InitialContext();
			DataSource ds 	= (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn			= ds.getConnection();			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}		
		return conn;
	}
	
	public int getTotalCnt() throws SQLException {
		
		int result = 0;
	
		Connection conn 		= null;
		PreparedStatement pstmt	= null;
		String sql				= "SELECT COUNT(*) FROM board";
		ResultSet rs			= null;
		
		try {
			conn		= this.getConnecction();
			pstmt		= conn.prepareStatement(sql);
			rs			= pstmt.executeQuery();
						
			if(rs.next()) {
				result = rs.getInt(1);
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
	
	public List<Board> boardList(int startRow, int endRow) throws SQLException{
	
		List<Board> al = new ArrayList<Board>();		
		
		Connection conn 		= null;
		PreparedStatement pstmt	= null;
		String sql				= "SELECT "
								+ "*"
								+ "FROM("
								+ "    SELECT ROWNUM as rn, a.*"
								+ "    FROM ("
								+ "        SELECT *"
								+ "            FROM board"
								+ "            ORDER BY ref DESC, re_step"
								+ "    ) a"
								+ ")"
								+ "WHERE rn BETWEEN ? AND ?";	
		ResultSet rs			= null;
		
		try {
			
			conn	= this.getConnecction();
			pstmt	= conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs		= pstmt.executeQuery();
			
			if(rs.next()) {	
				do {
					Board board = new Board();
					
					board.setWriter(rs.getString("writer"));
					board.setSubject(rs.getString("subject")); 
					board.setRe_step(rs.getInt("re_step"));
					board.setRe_level(rs.getInt("re_level")); 
					board.setReg_date(rs.getDate("reg_date"));
					board.setRef(rs.getInt("ref")); 
					board.setReadCount(rs.getInt("readCount"));
					board.setPasswd(rs.getString("passwd")); 
					board.setNum(rs.getInt("num"));
					board.setIp(rs.getString("ip")); 
					board.setEmail(rs.getString("email"));
					board.setContent(rs.getString("content"));
					
					al.add(board);
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
		
		return al;
	}
	
	
	public Board select(String num) throws SQLException {
		
		Board board = new Board();
		
		Connection conn 		= null;
		PreparedStatement pstmt	= null;
		ResultSet rs			= null;
		String sql				= "SELECT writer, "
								+ 		 "subject, "
								+ 		 "re_step, "
								+ 		 "re_level, "
								+ 		 "reg_date, "
								+ 		 "ref, "
								+ 		 "readCount, "
								+ 		 "passwd, "
								+ 		 "num, "
								+ 		 "ip, "
								+ 		 "email, "
								+ 		 "content "								
								+ "FROM board WHERE num = ?";
		
		System.out.println("SQL -> " + sql);
		
		try {
			conn	= this.getConnecction();
			pstmt	= conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs		= pstmt.executeQuery();
			
			if(rs.next()) {	
				
				board.setWriter(rs.getString("writer"));
				board.setSubject(rs.getString("subject")); 
				board.setRe_step(rs.getInt("re_step"));
				board.setRe_level(rs.getInt("re_level")); 
				board.setReg_date(rs.getDate("reg_date"));
				board.setRef(rs.getInt("ref")); 
				board.setReadCount(rs.getInt("readCount"));
				board.setPasswd(rs.getString("passwd")); 
				board.setNum(rs.getInt("num"));
				board.setIp(rs.getString("ip")); 
				board.setEmail(rs.getString("email"));
				board.setContent(rs.getString("content"));
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
		return board;
	}
	
	public void readCount(String num) throws SQLException {		
		
		Connection conn 		= null;
		PreparedStatement pstmt	= null;
		String sql				= "UPDATE board SET readcount=readcount+1 WHERE num = ?";
		
		System.out.println("SQL -> " + sql);
		
		try {
			conn 	= this.getConnecction();
			pstmt	= conn.prepareStatement(sql);
			pstmt.setString(1, num);			
			pstmt.executeUpdate();			
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			
		}
		finally {
			if(conn != null) {
				conn.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
		}
	}
	
	public int getMax() throws SQLException {
		int result = 0;
		
		Connection conn 		= null;
		PreparedStatement pstmt	= null;
		ResultSet rs			= null;
		String sql				= "SELECT MAX(num) FROM board";
		
		System.out.println("SQL -> " + sql);
		
		try {
			conn 	= this.getConnecction();
			pstmt	= conn.prepareStatement(sql);
			rs		= pstmt.executeQuery();
			
			if(rs.next()) {
				result	= rs.getInt(1);
			}
			
			System.out.println("result -> " + result);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());			
		}
		finally {
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

	

