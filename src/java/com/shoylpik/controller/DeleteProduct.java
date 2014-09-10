/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shoylpik.controller;

import com.shoylpik.service.ProductBean;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */
@WebServlet(name = "DeleteProduct", urlPatterns = {"/DeleteProduct"})
public class DeleteProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int productId = Integer.parseInt(request.getParameter("IPID"));
            ProductBean pBean = new ProductBean();
            pBean.deleteProduct(productId);
            response.sendRedirect("AdministrationPage.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(DeleteProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
