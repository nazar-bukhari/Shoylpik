/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shoylpik.dao;

import com.shoylpik.databaseConnection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Nazar
 */
public class LoginDao {

    private Connection connection;
    private PreparedStatement pstmt;
    String sqlQuery;
    ResultSet rs;

    public boolean validate(String name, String pass) {

        boolean status = false;

        try {
            connection = ConnectionFactory.getConnection();
            sqlQuery = "select AdminName,AdminPass from admins where AdminName= ? and AdminPass= ?";
            pstmt = connection.prepareStatement(sqlQuery);
//            System.out.println("Name : " + name + " Pass: " + pass);
            pstmt.setString(1, name);
            pstmt.setString(2, pass);
            rs = pstmt.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                }
            }
        }

        return status;
    }

}
