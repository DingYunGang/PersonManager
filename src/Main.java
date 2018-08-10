import java.io.*;
import java.sql.*;
import java.util.*;
import com.lyq.bean.Book;


/**
 * 使用JDBC查询mysql数据库示例
 */
public class Main {

    public static void main(String[] args) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("找不到驱动程序类，加载驱动失败！");
            e.printStackTrace();
        }

        String url = "jdbc:mysql://localhost:3306/test?serverTimezone=UTC&characterEncoding=utf-8";
        String username = "root";
        String password = "1872";
        try {
            // 2.驱动实例->Connection
            Connection conn = DriverManager.getConnection(url, username, password);

            // 3.Connection->Statement
            Statement stmt = conn.createStatement();

            // 4.Statement->ResultSet
            String sql = "select * from tb_books";
            ResultSet rs = stmt.executeQuery(sql);
			List <Book> list = new ArrayList<Book>();

            // 5.通过ResultSet获取数据
            while (rs.next()) {
            	Book book = new Book();
           
                book.setId(rs.getInt("id"));
				// 对name属性赋值
				book.setName(rs.getString("name"));
				// 对price属性赋值
				book.setPrice(rs.getDouble("price"));
				// 对bookCount属性赋值
				book.setBookCount(rs.getInt("bookCount"));
				// 对author属性赋值
				book.setAuthor(rs.getString("author"));
				list.add(book);
            }
         
            for(int i=0;i<list.size();i++) {
               System.out.println(list.get(i));
            }

            // 6.依次关闭ResultSet,Statement,Connection
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    System.out.println("ResultSet关闭时出现错误！");
                    e.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    System.out.println("Statement关闭时出现错误！");
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("Connection关闭时出现错误！");
                    e.printStackTrace();
                }
            }

        } catch (SQLException e) {
            System.out.println("数据库连接失败！");
            e.printStackTrace();
        }
    }
}
