package lk.ijse.gdse.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CompliantModel {

    public boolean saveComplaint(String complaintId, String username, String subject, String description, String date, String status)  {
        String url = "jdbc:mysql://localhost:3306/jspassignment";
        String user = "root";
        String pass = "user1";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url,user,pass);

            String sql = "insert into complaint (cid,uname,subject,description,date,status) values(?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,complaintId);
            preparedStatement.setString(2,username);
            preparedStatement.setString(3,subject);
            preparedStatement.setString(4,description);
            preparedStatement.setString(5,date);
            preparedStatement.setString(6,"Pending");

           int result = preparedStatement.executeUpdate();
           return result > 0;

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
