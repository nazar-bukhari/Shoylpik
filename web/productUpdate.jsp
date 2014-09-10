<%-- 
    Document   : productUpdate
    Created on : Sep 9, 2014, 4:18:20 PM
    Author     : Java-dev1
--%>

<%@page import="com.shoylpik.model.Product"%>
<%@page import="com.shoylpik.service.ProductBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Update</title>
        <link rel="stylesheet" href="menu_assets/css/bootstrap.css" type="text/css" media="screen">
    </head>
    <body>
        <%@include file="header.jsp"%>
    <legend></legend>
    <form class="form-horizontal" action="UpdateProduct" method="post"> 

        <%
            int id = Integer.parseInt(request.getParameter("IPID"));
            ProductBean productBean = new ProductBean();
            Product product = productBean.getProduct(id);
        %>

        <div class="form-group">
            <label for="IPname" class="col-sm-5 control-label">Product Name</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="IPname" name="IPname" value="<%=product.getProductName()%>" >
            </div>


            <div class="form-group">
                <label for="submit" class="col-sm-5 control-label"></label>
                <div class="col-sm-6">
                    <button type="submit" name="submit" value="Submit" class="btn-default ">Submit</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
