<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="./css/user/style.css"/>
<link rel="stylesheet" href="./css/user/flexslider.css" type="text/css" media="screen" />

<div id="main-right">

    <s:iterator value="dsLoaiSP_SanPham_HM" var="hm_LSP_SP">
        <s:set var="lspKey" value="#hm_LSP_SP.key"/>
        <h3><s:property value="#hm_LSP_SP.key"/></h3>
        <div id="products">
            <ul>
                <s:iterator value="#hm_LSP_SP.value">
                    <li>
                        <div class="content">
                            <a href="./XemChiTietSanPham">
                                <img src="images/user/products/timthumb.jpg" width="210" height="250"/>
                                <p class="title">Ắc quy khô 12V-62Ah 56225</p>                
                                <p class="sanpham_gia"><span>Giá: 715,000 VNĐ</span></p>
                        </div>
                    </li>
                </s:iterator>
            </ul>
        </div>    
        <div class="clr"></div>
        <br>
    </s:iterator>


    <div class="clr"></div>
    <br>
    <h3>Ắc Quy Đồng Nai</h3>
    <div id="products">
        <ul>
            <li>
                <div class="content">
                    <a href="./XemChiTietSanPham">
                        <img src="images/user/products/timthumb.jpg" width="210" height="250"/>
                        <p class="title">Ắc quy khô 12V-62Ah 56225</p>
                    </a>
                    <p class="sanpham_gia"><span>Giá: 715,000 VNĐ</span></p>
                </div>
            </li>
        </ul>
    </div>     
    <div class="clr"></div>
    <br>
</div>
<div class="clr"></div>

