/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shoylpik.controller;

import com.shoylpik.model.Product;
import com.shoylpik.service.ProductBean;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

/**
 *
 * @author asus
 */
@WebServlet(name = "AddProduct", urlPatterns = {"/AddProduct"})
@MultipartConfig
        (fileSizeThreshold=1024*1024*10, // 10 MB
maxFileSize=1024*1024*50, // 50 MB
maxRequestSize=1024*1024*100, // 100 MB
location="/" )
public class AddProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String SAVE_DIRECTORY = "shoylpik_";
        String absolutePath = request.getServletContext().getRealPath("");
        String savePath = absolutePath + File.separator + SAVE_DIRECTORY;

        File imageSaveDirectory = new File(savePath);
        if (!imageSaveDirectory.exists()) {
            imageSaveDirectory.mkdir();
        }

        System.out.println("imageSaveDirectory.getAbsolutePath(): " + imageSaveDirectory.getAbsolutePath());
        String fileName = null;
        //Get all the parts from request and write it to the file on server
//        for (Part part : request.getParts()) {
//            fileName = getFileName(part);
//            System.out.println("fileName: "+fileName);
//            part.write(savePath + File.separator + fileName);
//        }

        try {
//            System.out.println("savePath : " + savePath);
//            String imageName = request.getParameter("IPimage");
//            System.out.println("imageName: " + imageName);
            Part filePart = request.getPart("IPimage");
            String filename = getFilename(filePart);
//            System.out.println("filename: " + filename);
            InputStream imageInputStream = filePart.getInputStream();
            byte[] bytes = IOUtils.toByteArray(imageInputStream);

            Product product = new Product();
            product.setProductId(Integer.parseInt(request.getParameter("IPID")));
            product.setProductName(request.getParameter("IPname"));
            product.setProductImageName(filename);
            product.setProductCategory(request.getParameter("IPcat"));
            product.setProductPrice(Float.parseFloat(request.getParameter("IPprice")));
            product.setProductQuantity(Integer.parseInt(request.getParameter("IPQuant")));

            ProductBean pBean = new ProductBean();
            pBean.addProduct(product);

            String fullImagePath = savePath + File.separator + filename;
            File file = new File(fullImagePath);
            System.out.println("fullImagePath : " + fullImagePath);
            FileOutputStream fos = new FileOutputStream(file);
            fos.write(bytes);

//            boolean isMultipart = ServletFileUpload.isMultipartContent(request);
//            if (!isMultipart) {
//
//            } else {
//                System.out.println("Inside else");
//                FileItemFactory factory = new DiskFileItemFactory();
//                ServletFileUpload upload = new ServletFileUpload(factory);
//                List items = null;
//
//                try {
//                    items = upload.parseRequest(request);
//                     System.out.println("Inside Try");
//                } catch (FileUploadException e) {
//                     System.out.println("Inside Catch");
//                }
//                Iterator itr = items.iterator();
//                while (itr.hasNext()) {
//                    System.out.println("Inside while");
//                    FileItem item = (FileItem) items.iterator();
//                    item.write(file);
//                }
//            }
        } catch (SQLException ex) {
            Logger.getLogger(AddProduct.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(AddProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("AdministrationPage.jsp");
    }

    private static String getFilename(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                String filename = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
                return filename.substring(filename.lastIndexOf('/') + 1).substring(filename.lastIndexOf('\\') + 1); // MSIE fix.
            }
        }
        return null;
    }

}
