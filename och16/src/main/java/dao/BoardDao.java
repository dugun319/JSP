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
		String sql				= "SELECT NVL(MAX(num), 0) FROM board";
		
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
	
	public int update(Board board) throws SQLException {
		
		int result = 0;
		
		Connection conn 		= null;
		PreparedStatement pstmt = null;
		String sql				= "UPDATE board SET "
									+ "writer = ?, "
									+ "subject = ?, "
									+ "content = ?, "
									+ "email = ?, "
									+ "passwd = ?, "
									+ "ip = ?, "
									+ "reg_date = sysdate "
								    + "WHERE num = ?";
		
		try {
			
			conn	= this.getConnecction();
			pstmt	= conn.prepareStatement(sql);
			
			pstmt.setString(1, board.getWriter());
			pstmt.setString(2, board.getSubject());
			pstmt.setString(3, board.getContent());
			pstmt.setString(4, board.getEmail());
			pstmt.setString(5, board.getPasswd());
			pstmt.setString(6, board.getIp());
			pstmt.setInt(7, board.getNum());
			
			result = pstmt.executeUpdate();
			
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
	
	public int insert(Board board, int maxNum) throws SQLException {
		
		int result = 0;
		
		Connection conn 		= null;
		PreparedStatement pstmt = null;
		String sql1				= "UPDATE board SET "
									+ "re_step = re_step + 1 "
									+ "WHERE ref = ?"
									+ "and re_step > ?";		
		
		String sql2				= "INSERT INTO board( "
									+ "num, "
									+ "writer, "
									+ "subject, "
									+ "content, "
									+ "email, "
									+ "readcount, "
									+ "passwd, "
									+ "ref, "
									+ "re_step, "
									+ "re_level, "
									+ "ip, "
									+ "reg_date) "
									+ "VALUES ("
									+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		
		
		try {
			
			int number = board.getNum();
			
			conn	= this.getConnecction();
			
									
			if(number != 0) {
				
				System.out.println("BoardDao insert sql1 -> " + sql1);
				System.out.println("BoardDao insert board.getRef() -> " + board.getRef());
				System.out.println("BoardDao insert board.getRe_step() -> " + board.getRe_step());
				
				pstmt = conn.prepareStatement(sql1);
				pstmt.setInt(1, board.getRef());
				pstmt.setInt(2, board.getRe_step());
				pstmt.executeUpdate();
				pstmt.close();
				
				board.setRe_step(board.getRe_step() + 1);
				board.setRe_level(board.getRe_level() + 1);
			}
			
			if(number == 0) {
				board.setRef(maxNum);
			}
			
			pstmt	= conn.prepareStatement(sql2);
			
			pstmt.setInt(1, maxNum);
			pstmt.setString(2, board.getWriter());			
			pstmt.setString(3, board.getSubject());
			pstmt.setString(4, board.getContent());
			pstmt.setString(5, board.getEmail());
			pstmt.setInt(6, board.getReadCount());
			pstmt.setString(7, board.getPasswd());
			pstmt.setInt(8, board.getRef());
			pstmt.setInt(9, board.getRe_step());
			pstmt.setInt(10, board.getRe_level());
			pstmt.setString(11, board.getIp());
			
			result = pstmt.executeUpdate();
			
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
	
	public int delete(String position, String num, String password) throws SQLException {
		int result = 0;
		
		Connection conn 		= null;
		PreparedStatement pstmt = null;
		String sql				= "DELETE FROM board WHERE num = ?";
		BoardDao bd				= BoardDao.getInstance();
		
		try {
			conn	= this.getConnecction();
			pstmt	= conn.prepareStatement(sql);
			//pstmt.setString(1, position);
			pstmt.setString(1, num);
			
			System.out.println("position ->" + position);
			System.out.println("num ->" + num);			
			
			if(bd.passCheck(num, password)) {
				result 	= pstmt.executeUpdate();
				System.out.println("pstmt -> " + pstmt.toString());
				System.out.println("public int delete result = pstmt.executeUpdate(); -> " + result);
			}
			
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
	
	public boolean passCheck(String num, String password) throws SQLException {
		boolean flag = false;
		
		Connection conn 		= null;
		PreparedStatement pstmt = null;
		String sql				= "SELECT passwd FROM board WHERE num = ?";
		ResultSet rs			= null;
		String dbPassword		= null;
		
		try {
			conn		= this.getConnecction();
			pstmt		= conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs			= pstmt.executeQuery();
			
			if(rs.next()) {
				dbPassword	= rs.getString(1);
			}
			
			if(dbPassword.equals(password)) {
				flag = true;
			}
			
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
		
		System.out.println("passCheck flag -> " + flag);
		
		return flag;
	}
	
}

	

