package kr.go.shinan.model;
import java.sql.*;

public class Maria {
	
	static final String DRIVER = "org.mariadb.jdbc.Driver";
    static final String URL = "jdbc:mariadb://127.0.0.1:3308/goverment?serverTimezone=Asia/Seoul";
    static final String USER = "root";
    static final String PW = "1234";
	
	final static String NOTICE_SELECT_ALL = "select * from notice order by no desc";
	final static String NOTICE_INSERT = "insert into notice(title, content) values (?,?)";

	
	final static String USER_JOIN = "insert into user(id, pw, name, birth, email, tel, address) values (?,?,?,?,?,?,?)";
	final static String USER_LOGIN = "select * from user where id=? and pw=?";
	final static String USER_ID_CHECK = "select * from user where id=?";

	
}
