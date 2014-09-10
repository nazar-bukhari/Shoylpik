/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shoylpik.controller;

import com.shoylpik.dao.LoginDao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nazar
 */
@WebServlet(name = "userValidation", urlPatterns = {"/userValidation"})
public class UserValidation extends HttpServlet {

    private Connection connection;
    private PreparedStatement pstmt;
    String sqlQuery;
    ResultSet rs;

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("userName");
        String pass = request.getParameter("password");

        HttpSession session = request.getSession(false);
        if (session != null) {
//            session.invalidate(); 
            session.setAttribute("name", name);
        }
        LoginDao logindao = new LoginDao();
        if (logindao.validate(name, pass)) {
            RequestDispatcher rd = request.getRequestDispatcher("AdministrationPage.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
