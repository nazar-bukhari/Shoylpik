<%-- 
    Document   : productDelete
    Created on : Sep 9, 2014, 11:48:56 AM
    Author     : Java-dev1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Product</title>
        <link rel="stylesheet" href="menu_assets/css/bootstrap.css" type="text/css" media="screen">
    </head>
    <body>
        <%@include file="header.jsp"%>
    <legend></legend>
    <form class="form-horizontal" action="DeleteProduct" method="post">   

        <div class="form-group">
            <label for="IPID" class="col-sm-5 control-label">Product ID</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="IPID" name="IPID" placeholder="Product ID">
            </div>
        </div>

        <div class="form-group">
            <label for="submit" class="col-sm-5 control-label"></label>
            <div class="col-sm-6">
                <button type="submit" name="submit" value="Submit" class="btn-default ">Submit</button>
            </div>
        </div>

    </form>

</body>
</html>
