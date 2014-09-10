<%-- 
    Document   : productAddNew
    Created on : 25-Aug-2014, 10:05:53
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("name") == null) {
%>
<jsp:forward page="login.jsp" />
<%
    }
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<meta http-equiv="REFRESH" content="3;url=/Shoylpik_Off/login.jsp">-->
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>New Product</title>
        <link rel="stylesheet" href="menu_assets/css/bootstrap.css" type="text/css" media="screen">
    </head>
    <body>
        <%
            //session.removeAttribute("name");
%>

        <%@include file="header.jsp"%>
        <div class="container" >
            <!--<div class="col-lg-8">-->
            <form class="form-horizontal" action="AddProduct" method="post">
                <fieldset>
                    <legend><center>ADD New Products</center></legend>
                    <div class="form-group">
                        <label for="IPID" class="col-sm-5 control-label">Product ID</label>
                        <div class="col-sm-3">
                            <input type="text" autocomplete="off" required = "required" class="form-control" id="IPID" name="IPID" placeholder="Product ID">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="IPname" class="col-sm-5 control-label">Product Name</label>
                        <div class="col-sm-3">
                            <input type="text" required = "required" class="form-control" id="IPname" name="IPname" placeholder="Product Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="IPQuant" class="col-sm-5 control-label">Product Quantity</label>
                        <div class="col-sm-3">
                            <input type="text" autocomplete="off" required = "required" class="form-control" id="IPQuant" name="IPQuant" placeholder="Product Quantity">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="IPcat" class="col-sm-5 control-label">Product Category</label>
                        <div class="col-sm-3">
                            <input type="text" autocomplete="off" required = "required" class="form-control" id="IPcat" name="IPcat" placeholder="Product Category">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="IPprice" class="col-sm-5 control-label">Product Price</label>
                        <div class="col-sm-3">
                            <input type="text" autocomplete="off" required = "required" class="form-control" id="IPprice" name="IPprice" placeholder="Product Price">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="IPimage" class="col-sm-5 control-label">Product Image</label>
                        <div class="col-sm-3">
                            <input type="file" autocomplete="off" name="IPimage"> 
                        </div>
                    </div>
                    <legend></legend>
                    <div class="form-group">
                        <label for="submit" class="col-sm-5 control-label"></label>
                        <div class="col-sm-6">
                            <button type="submit" name="submit" value="Submit" class="btn-default ">Submit Form</button>
                        </div>
                    </div>

                </fieldset>

            </form>
            <!--</div>-->
        </div>

        <script type="text/javascript" src="resources/js/bootstrap.js"></script>
    </body>
</html>
