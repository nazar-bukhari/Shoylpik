/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shoylpik.service;

import com.shoylpik.databaseConnection.ConnectionFactory;
import com.shoylpik.databaseConnection.DatabaseConnectionTerminate;
import com.shoylpik.model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author asus
 */
public class ProductBean {

    private Connection connection;
    private PreparedStatement pstmt;

    public void addProduct(Product product) throws SQLException {

        try {

            connection = ConnectionFactory.getConnection();
            pstmt = connection.prepareStatement("INSERT INTO products(ProductID,ProductName,ProductQuant,ProductCAT,ProductPrice,ProductImage) VALUES(?,?,?,?,?,?)");
            pstmt.setInt(1, product.getProductId());
            pstmt.setString(2, product.getProductName());
            pstmt.setInt(3, product.getProductQuantity());
            pstmt.setString(4, product.getProductCategory());
            pstmt.setFloat(5, product.getProductPrice());
            pstmt.setString(6, product.getProductImageName());
            pstmt.execute();

        } finally {
            if (pstmt != null) {
                pstmt.close();
            }
            DatabaseConnectionTerminate.close(connection);
        }
    }

    public void deleteProduct(int id) throws SQLException {

        try {

            connection = ConnectionFactory.getConnection();
            pstmt = connection.prepareStatement("DELETE FROM products WHERE ProductID=?");
            pstmt.setInt(1, id);
            pstmt.execute();

        } finally {
            if (pstmt != null) {
                pstmt.close();
            }
            DatabaseConnectionTerminate.close(connection);
        }
    }

    public void updateProduct(Product product) throws SQLException {

        try {
            connection = ConnectionFactory.getConnection();
            pstmt = connection.prepareStatement("UPDATE products SET ProductName=?, ProductQuant=?, ProductCAT=?, ProductPrice=? ,ProductImage=? WHERE ProductID=?");           
            pstmt.setString(1, product.getProductName());
            pstmt.setInt(2, product.getProductQuantity());
            pstmt.setString(3, product.getProductCategory());
            pstmt.setFloat(4, product.getProductPrice());
            pstmt.setString(5, product.getProductImageName());
            pstmt.setInt(6, product.getProductId());
            pstmt.execute();
            pstmt.execute();

        } finally {
            if (pstmt != null) {
                pstmt.close();
            }
            DatabaseConnectionTerminate.close(connection);
        }
    }

    public List<Product> getAllProduct() throws SQLException {

        List productList = new ArrayList();
        Statement stmt = null;
        ResultSet rs = null;

        try {
            connection = ConnectionFactory.getConnection();
            stmt = connection.createStatement();
            rs = stmt.executeQuery("SELECT PRODUCTS.ProductID,PRODUCTS.ProductName,PRODUCTS.ProductCAT,PRODUCTS.ProductPrice,PRODUCTS.ProductImage FROM PRODUCTS");
            while (rs.next()) {
                Product product = new Product();
                product.setProductId(rs.getInt(1));
                product.setProductName(rs.getString(2));
                product.setProductCategory(rs.getString(3));
                product.setProductPrice(rs.getFloat(4));
                product.setProductImageName(rs.getString(5));

                productList.add(product);
            }
        } finally {
            DatabaseConnectionTerminate.close(rs);
            DatabaseConnectionTerminate.close(stmt);
            DatabaseConnectionTerminate.close(connection);

        }

        return productList;
    }

    public Product getProduct(int id) throws SQLException {

        Product product = null;
        ResultSet rs = null;
        Statement stmt = null;
        try {
            connection = ConnectionFactory.getConnection();
            stmt = connection.createStatement();
            rs = stmt.executeQuery("SELECT * FROM PRODUCTS WHERE ProductID=" + id);
            if (rs.next()) {
                product = new Product();

            }
        } finally {
            DatabaseConnectionTerminate.close(connection);
            DatabaseConnectionTerminate.close(rs);
            DatabaseConnectionTerminate.close(stmt);

        }
        return product;
    }
}
