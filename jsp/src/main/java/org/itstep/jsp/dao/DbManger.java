package org.itstep.jsp.dao;

import org.itstep.jsp.entity.User;
import org.itstep.jsp.model.Student;

import java.net.URL;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DbManger {

    private static final String URL = "jdbc:sqlite:C:/Users/АбдулК/Desktop/jsp/identifier.sqlite";
    private static final String CREATE_USER_QUERY = "insert into user (name, email) values(?,?)";
    private static final String GET_ALL_USER_QUERY = "select * from user";
    private static final String GET_USER_QUERY = "select * from user where id = ?";




        public static List<User> getAllUsers() throws ClassNotFoundException {

        Class.forName("org.sqlite.JDBC");
        List<User> users = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(URL);
             PreparedStatement statement = connection.prepareStatement(GET_ALL_USER_QUERY)) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                users.add(new User(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

            return users;

    }


    public static User getUser(Integer id) throws ClassNotFoundException {

        Class.forName("org.sqlite.JDBC");
        User user = new User();
        try (Connection connection = DriverManager.getConnection(URL);
             PreparedStatement statement = connection.prepareStatement(GET_USER_QUERY)) {

            statement.setInt(1,id);
            ResultSet resultSet = statement.executeQuery();

            user.setId(resultSet.getInt(1));
            user.setName(resultSet.getString(2));
            user.setEmail(resultSet.getString(3));




        } catch (Exception e) {
            e.printStackTrace();
        }

return user;
    }
    public static void createUser(User user) throws ClassNotFoundException {

        Class.forName("org.sqlite.JDBC");

        try (Connection connection = DriverManager.getConnection(URL);
             PreparedStatement statement = connection.prepareStatement(CREATE_USER_QUERY)) {


            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());

            statement.executeUpdate();


            System.out.println("Success");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
