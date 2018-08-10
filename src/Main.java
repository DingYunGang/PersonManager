import java.io.*;
import java.sql.*;
import java.util.*;
import com.lyq.bean.Book;


/**
 * ʹ��JDBC��ѯmysql���ݿ�ʾ��
 */
public class Main {

    public static void main(String[] args) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("�Ҳ������������࣬��������ʧ�ܣ�");
            e.printStackTrace();
        }

        String url = "jdbc:mysql://localhost:3306/test?serverTimezone=UTC&characterEncoding=utf-8";
        String username = "root";
        String password = "1872";
        try {
            // 2.����ʵ��->Connection
            Connection conn = DriverManager.getConnection(url, username, password);

            // 3.Connection->Statement
            Statement stmt = conn.createStatement();

            // 4.Statement->ResultSet
            String sql = "select * from tb_books";
            ResultSet rs = stmt.executeQuery(sql);
			List <Book> list = new ArrayList<Book>();

            // 5.ͨ��ResultSet��ȡ����
            while (rs.next()) {
            	Book book = new Book();
           
                book.setId(rs.getInt("id"));
				// ��name���Ը�ֵ
				book.setName(rs.getString("name"));
				// ��price���Ը�ֵ
				book.setPrice(rs.getDouble("price"));
				// ��bookCount���Ը�ֵ
				book.setBookCount(rs.getInt("bookCount"));
				// ��author���Ը�ֵ
				book.setAuthor(rs.getString("author"));
				list.add(book);
            }
         
            for(int i=0;i<list.size();i++) {
               System.out.println(list.get(i));
            }

            // 6.���ιر�ResultSet,Statement,Connection
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    System.out.println("ResultSet�ر�ʱ���ִ���");
                    e.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    System.out.println("Statement�ر�ʱ���ִ���");
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("Connection�ر�ʱ���ִ���");
                    e.printStackTrace();
                }
            }

        } catch (SQLException e) {
            System.out.println("���ݿ�����ʧ�ܣ�");
            e.printStackTrace();
        }
    }
}
