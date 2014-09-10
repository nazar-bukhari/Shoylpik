<%-- 
    Document   : Administration_Page
    Created on : 07-Sep-2014, 21:02:34
    Author     : asus
--%>

<%@page import="java.util.List"%>
<%@page import="com.shoylpik.model.Product"%>
<%@page import="com.shoylpik.service.ProductBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link rel="stylesheet" href="menu_assets/css/bootstrap.css" type="text/css" media="screen">
    </head>
    <body>
        <%@include file="header.jsp"%>
    <legend></legend>

    <div class="container">
        <form class="form-horizontal" method="post">         
            <div class="col-sm-7 control-label" >
                <button type="button" name="submit" onclick="location.href = 'productAddNew.jsp'" value="Submit" class="btn-default ">Add New Product</button>
            </div>
        </form>
    </div>


    <div class="container">

        <section id="content"><!-- Defining the content section #2 -->
            <div id="left">
                <!--<h3>Last products</h3>-->
                <ul>
                    <li>
                        <div class="table-striped" align="center">
                            <table class="table"> <br>
                                <tr class="active">
                                    <td>Product ID </td>
                                    <td>Product Name</td>
                                    <td>Product Category</td>
                                    <td>Price</td>
                                    <td>Product Image</td>   
                                </tr>

                                <%
                                    ProductBean proBean = new ProductBean();
                                    List<Product> list = proBean.getAllProduct();
                                    for (Product pro : list) {
                                %>

                                <tr class="success">
                                    <td><%=pro.getProductId()%> </td>
                                    <td><%=pro.getProductName()%> </td>
                                    <td><%=pro.getProductCategory()%> </td>
                                    <td><%=pro.getProductPrice()%> </td>
                                    <td><%=pro.getProductImageName()%> </td>
                                    <td style="border: none;">
                                        <div>
                                            <form method="post" action="productUpdate.jsp">
                                                <input type="hidden" id="updateId" name="IPID" value="<%=String.valueOf(pro.getProductId())%>"/> 
                                                <input type="submit" value="Update"/> 
                                            </form>
                                        </div>
                                    </td>
                                    <td style="border: none;">
                                        <div>
                                            <form method="post" action="DeleteProduct">
                                                <input type="hidden" id="delId" name="IPID" value="<%=String.valueOf(pro.getProductId())%>"/> 
                                                <input type="submit" value="Delete"/> 
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>

                            </table>
                        </div>
                    </li>
                </ul>
            </div> 
        </section>
    </div>

</body>
</html>
