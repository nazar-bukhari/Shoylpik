<%-- 
    Document   : productAddNew
    Created on : 25-Aug-2014, 10:05:53
    Author     : asus
--%>
<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="com.shoylpik.model.Product"%>
<%@page import="com.shoylpik.service.ProductBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

    <head lang="en">
        <meta charset="UTF-8">
        <title>::Shoilpik::</title>

        <!-- Linking styles -->
        <link rel="stylesheet" href="menu_assets/css/reset.css" type="text/css" media="screen">
        <link rel="stylesheet" href="menu_assets/css/style.css" type="text/css" media="screen">
        <link rel="stylesheet" href="menu_assets/css/nivo-slider.css" type="text/css" media="screen">
        <link rel="stylesheet" href="menu_assets/css/bootstrap.css" type="text/css" media="screen">

    </head>

    <body>

        <div class="container">
            <header><!-- Defining the header section of the page -->

                <div class="top_head"><!-- Defining the top head element -->
                    <div class="logo"><!-- Defining the logo element -->
                        <a href="#">
                            <img src="menu_assets/images/logo_final.png" title="E-Store template" alt="E-Store template" />
                        </a>
                    </div>

                    <section id="search"><!-- Search form -->

                        <ul id="social"><!-- Social profiles links -->
                            <li><a href="#" title="facebook" rel="external nofollow"><img alt="" src="images/facebook.png"></a></li>
                            <li><a href="#" title="linkedin" rel="external nofollow"><img alt="" src="images/linkedin.png"></a></li>
                        </ul>
                    </section>
                </div>

                <nav class="navbar navbar-default" role="navigation"><!-- Defining the navigation menu -->
                    <ul class="nav navbar-nav">

                        <li class=""><a href="javascript:showHide('main');">Home</a></li>
                        <li class="warning"><a href="javascript:showHide('about');">About Shoilpik</a></li>
                        <li class="warning"><a href="#">Showroom</a></li>
                        <li class="warning"><a href="#">Contact Details</a></li>
                        <li class="warning"><a href="login.jsp">Login</a></li>
                    </ul>
                </nav>

            </header>

            <script>
                function showHide(d)
                {
                    var onediv = document.getElementById(d);
                    var divs = ['main', 'about'];
                    for (var i = 0; i < divs.length; i++)
                    {
                        if (onediv !== document.getElementById(divs[i]))
                        {
                            document.getElementById(divs[i]).style.display = 'none';
                        }
                    }
                    onediv.style.display = 'block';
                }
            </script>


            <div id="slider2"><!-- Defining the main content section -->

                <!-- Promo slider -->
                <section id="slider-wrapper">
                    <div id="slider" class="nivoSlider">
                        <img style="display: none;" src="menu_assets/images/promo1.jpg" alt="" title="#htmlcaption-1">
                        <img style="display: none;" src="menu_assets/images/promo2.jpg" alt="" title="#htmlcaption-2">
                        <img style="display: none;" src="menu_assets/images/promo3.jpg" alt="" title="#htmlcaption-3">
                    </div>

                    <div id="htmlcaption-1" class="nivo-html-caption">
                        <!--                        <h5 class="p2">Sample image</h5>
                                                <p>May be some description here</p>-->
                    </div>
                    <div id="htmlcaption-2" class="nivo-html-caption">
                        <h5 class="p2">Serious about our quality</h5>
                        <p>description here</p>
                    </div>
                    <div id="htmlcaption-3" class="nivo-html-caption">
                        <!--                        <h5 class="p2">Or something else</h5>
                                                <p>Put any description here</p>-->
                    </div>
                </section>
            </div>

            <div id="about" style="display: none">
                <section id="About">
                    <article class="col-lg-9">
                        <header>
                            <h2>About Shoilpik </h2>
                        </header>
                        <legend></legend>
                        <p>
                            We are a fashion design house, manufacturer and retailer of fashion wear, fashion accessories, home textiles, handicraft, and handloom based products of Bangladesh. The initiative primarily targeted young generation of Bangladesh. Utilizing traditional handloom skills, artisan resources and Shoilpik's own innovative design and presentation, Shoilpik has become one of the leading brands in the fashion sector of Bangladesh.
                        </p>
                        <p>
                            We have been in handloom based handcrafted fashion wear business for more than nine years now. Although initiated as a home-based boutique house, during its successful rapid growth of popularity, operations and infrastructure, Shoilpik dimensions and visions have proliferated due to discoveries of unused resources, skills and potentials. A significant number of grass-root level artisans and small entrepreneurs scattered at various parts of the country came forward with their goods, materials and expertise and accelerated the growth of Shoilpik's infrastructure. Today Shoilpik consists of about 5000 contractual workers and more than 350 permanent employees.
                        </p>
                        <p>
                            All major weaving regions have been our priority, in terms of fabric including cotton, endy, silk and other variants as it is always. These fabrics have been patterned with both trendy and traditional techniques and then ornamented with Screen print, Block, Karchupi, Computer embroidery, Hand embroidery, Eplic and Sequence work.
                        </p>
                        <header>
                            <h3>Awards from differential organization</h3>
                        </header>
                        <legend></legend>
                        <p>
                            1. Close up one fashion competition 5th place in the year 2003.
                        </p>
                        <p>
                            2. Regularly attend to Daily Protom Alo, Alokito Chattagram, fashion competition and got two times 1st prize.
                        </p>
                        <p>
                            3. Each and every year participate to the fashion competition organized by Dainik Samokal and got best prize and different category prize.

                        </p>
                        <p>
                            4. ssssIn the year 2008 12(Twelve) prizes got from fashion competition organization by Bexifebrics-Anyadin and first place in the same competition.

                        </p>
                        <p>
                            Also got Huge prize from fashion competition organized by Weekly 2000 Ananda Bhuban Magazine.
                            Shoilipik making dresses our own designer our managing director Md. Elias who has completed his master Degree from Fine Arts Dept. and maintaining the Design section and all of designers under his supervision.
                            All the times shoilpik using the Bangladeshi, handlooms, khadi, andri silk, bexi boil, andri cotton etc.

                        </p>
                    </article>
                </section>
            </div>

            <div id="main" class="col-sm-10"><!-- Defining submain content section -->

                <section id="content"><!-- Defining the content section #2 -->
                    <div id="left">
                        <!--<h3>Last products</h3>-->
                        <ul>
                            <li>
                                <div class="table-striped" align="center">
                                    <table class="table" > <br>
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
                                            String SAVE_DIRECTORY = "menu_assets/ProductImage";
                                            String absolutePath = request.getServletContext().getRealPath("");
                                            String savePath = absolutePath + "/" + SAVE_DIRECTORY;
                                            String fullImagePath1 = savePath + "/" ;
                                            String fullImagePath = fullImagePath1.replaceAll("\\\\", "/");
                                            for (Product pro : list) {
                                                System.out.println(fullImagePath);
                                                String mainPath = fullImagePath+pro.getProductImageName();
                                        %>
                                        <tr class="success">
                                            <td><%=pro.getProductId()%> </td>
                                            <td><%=pro.getProductName()%> </td>
                                            <td><%=pro.getProductCategory()%> </td>
                                            <td><%=pro.getProductPrice()%> </td> 
                                            <td><img src=<%=mainPath%> width="114" height="110"></td>
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

                <footer> 
                    <legend></legend>
                    <div id="privacy" class="col-sm-6">
                        <p>Contact information: <a href="mailto:nazar.bukhari12@gmail.com">
                                nazar.bukhari12@gmail.com</a>.</p>
                    </div>
                </footer>   
            </div>        

        </div>

    </body>

    <!-- Linking scripts -->
    <script src="menu_assets/js/jquery.js"></script>
    <script src="menu_assets/js/jquery.nivo.slider.pack.js"></script>
    <script src="menu_assets/js/main.js"></script>
    <script type="text/javascript" src="resources/js/bootstrap.js"></script>


    <!--    [if lt IE 9]> -->
    <script type="text/javascript" src="js/html5.js"></script>
    <!--   <![endif]-->
</html>

