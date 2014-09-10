<%-- 
    Document   : login
    Created on : 07-Sep-2014, 16:02:53
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="menu_assets/css/bootstrap.css" type="text/css" media="screen">
    </head>
    <body>
        <%@include file="header.jsp"%>
        <legend></legend>
        <form class="form-horizontal" action="userValidation" method="post">
            <div class="form-group">
                <label for="userName" class="col-sm-5 control-label">Username</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="uName" name="userName" placeholder="UserName">
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-5 control-label">Password</label>
                <div class="col-sm-3">
                    <input type="password" class="form-control" id="pass" name="password" placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <label for="submit" class="col-sm-5 control-label"></label>
                <div class="col-sm-6">
                    <button type="submit" name="submit" value="Submit" class="btn-default ">Login</button>
                    <button type="reset" class="btn-default ">Reset</button>
                </div>
            </div>

        </form>
    </body>
</html>
