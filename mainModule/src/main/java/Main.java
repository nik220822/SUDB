import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Main {
    static String select = "select product_name from NickDB.ORDERS join NickDB.CUSTOMERS on NickDB.ORDERS.customer_id = NickDB.CUSTOMERS.id where NickDB.CUSTOMERS.name = 'alexey'";

    public static void main(String[] args) {
        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/NickDB", "root", "***");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from NickDB.ORDERS");
            while (resultSet.next()) {
                System.out.printf("%s %s %n", resultSet.getString("name"), resultSet.getString("surname"));
            }
        } catch (Exception e) {
        }
    }
}