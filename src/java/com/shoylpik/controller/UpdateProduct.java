/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.shoylpik.controller;

import com.shoylpik.model.Product;
import com.shoylpik.service.ProductBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */
public class UpdateProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //        processRequest(request, response);
            Product product = new Product();
            product.setProductId(Integer.parseInt(request.getParameter("IPID")));
            product.setProductName(request.getParameter("IPname"));
            product.setProductImageName(request.getParameter("IPimage"));
            product.setProductCategory(request.getParameter("IPcat"));
            product.setProductPrice(Float.parseFloat(request.getParameter("IPprice")));
            product.setProductQuantity(Integer.parseInt(request.getParameter("IPQuant")));
            ProductBean pBean = new ProductBean();
            pBean.updateProduct(product);
            response.sendRedirect("AdministrationPage.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(UpdateProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


}
