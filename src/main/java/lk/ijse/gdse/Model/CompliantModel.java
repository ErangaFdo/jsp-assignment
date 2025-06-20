package lk.ijse.gdse.Model;

import lk.ijse.gdse.Dto.ComplaintDto;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CompliantModel {

    public boolean saveComplaint(String complaintId, String username, String subject, String description, String date, String status) {
        String url = "jdbc:mysql://localhost:3306/jspassignment";
        String user = "root";
        String pass = "user1";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, user, pass);

            String sql = "insert into complaint (cid,uname,subject,description,date,status) values(?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, complaintId);
            preparedStatement.setString(2, username);
            preparedStatement.setString(3, subject);
            preparedStatement.setString(4, description);
            preparedStatement.setString(5, date);
            preparedStatement.setString(6, "Pending");

            int result = preparedStatement.executeUpdate();
            return result > 0;

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<ComplaintDto> getComplaintByuser(String username) {
        String url = "jdbc:mysql://localhost:3306/jspassignment";
        String user = "root";
        String pass = "user1";

        List<ComplaintDto> complaintDtos = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, user, pass);
            String sql = "SELECT * FROM complaint WHERE uname=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                complaintDtos.add(new ComplaintDto(
                        resultSet.getString("cid"),
                        resultSet.getString("uname"),
                        resultSet.getString("subject"),
                        resultSet.getString("description"),
                        resultSet.getString("date"),
                        resultSet.getString("status")
                ));
            }

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return complaintDtos;
    }


    public List<ComplaintDto> getallComplaint(String username, String subject, String description, String date, String status) {
        String url = "jdbc:mysql://localhost:3306/jspassignment";
        String user = "root";
        String pass = "user1";

        List<ComplaintDto> complaintDtos = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, user, pass);
            String sql = "SELECT * FROM complaint ";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                complaintDtos.add(new ComplaintDto(
                        resultSet.getString("cid"),
                        resultSet.getString("uname"),
                        resultSet.getString("subject"),
                        resultSet.getString("description"),
                        resultSet.getString("date"),
                        resultSet.getString("status")
                ));
            }

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return complaintDtos;
    }

    public boolean updateComplaint(String complaintId, String username, String subject, String description, String date, String status) {
        String url = "jdbc:mysql://localhost:3306/jspassignment";
        String user = "root";
        String pass = "user1";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, user, pass);

            String sql = "UPDATE  complaint SET uname=?,subject=?,description=?,date=?, status=?  WHERE cid=? ";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, subject);
            preparedStatement.setString(3, description);
            preparedStatement.setString(4, date);
            preparedStatement.setString(5, status);
            preparedStatement.setString(6, complaintId);

            int result = preparedStatement.executeUpdate();
            return result > 0;

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean deleteCompliant(String cid) {
        String url = "jdbc:mysql://localhost:3306/jspassignment";
        String user = "root";
        String pass = "user1";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, user, pass);

            String sql = "DELETE FROM complaint WHERE cid=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, cid);

            int result = preparedStatement.executeUpdate();
            return result > 0;

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateComplaintStatus(String cid, String status) {
        String url = "jdbc:mysql://localhost:3306/jspassignment";
        String user = "root";
        String pass = "user1";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, user, pass);

            PreparedStatement pst = connection.prepareStatement("UPDATE complaint SET status=? WHERE cid=?");

            pst.setString(1, status);
            pst.setString(2, cid);

            return pst.executeUpdate() > 0;
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }

    }
}