<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Web E-Commerce</title>
        <meta charset="UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="./css/user/style.css"/>
        <link rel="stylesheet" type="text/css" href="./css/admin/admin-style.css"/>
        <link rel="stylesheet" href="./css/user/flexslider.css" type="text/css" media="screen" />

    </head>
    <body>
        <div id="website">
            <jsp:include page="KhungBenTren.jsp" /> 
            <jsp:include page="KhungQuangCao.jsp"/>
            <!-- Phần Main -->
            <div id="main">
                <jsp:include page="KhungBenTrai.jsp" /> 
                <div id="main-right">
                    <h3>Ắc quy BOSCH</h3>
                    <div id="products">
                        <ul>
                            <li>
                                <div class="content">
                                    <a href="./XemChiTietSanPham">
                                        <img src="images/user/products/timthumb.jpg" width="210" height="250"/>
                                        <p class="title">Ắc quy khô 12V-62Ah 56225</p>
                                    </a>
                                    <p class="price">Giá: liên hệ .... </p>
                                </div>
                            </li>
                            <li>
                                <div class="content">
                                    <a href="./XemChiTietSanPham">
                                        <img src="images/user/products/timthumb.jpg" width="210" height="250"/>
                                        <p class="title">Ắc quy khô 12V-62Ah 56225</p>
                                    </a>
                                    <p class="price">Giá: liên hệ .....</p>
                                </div>
                            </li>
                            <li>
                                <div class="content">
                                    <a href="./XemChiTietSanPham">
                                        <img src="images/user/products/timthumb.jpg" width="210" height="250"/>
                                        <p class="title">Ắc quy khô 12V-62Ah 56225</p>
                                    </a>
                                    <p class="price">Giá: liên hệ</p>
                                </div>
                            </li>
                        </ul>
                    </div>     
                    <div class="clr"></div>
                    <br>
                </div>
                <div class="clr"></div>
            </div>
            <jsp:include page="KhungBenDuoi.jsp" />
        </div>
    </body>
</html>