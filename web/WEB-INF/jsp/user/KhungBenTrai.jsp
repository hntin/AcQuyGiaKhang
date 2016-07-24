<%@page import="org.json.simple.JSONArray"%>
<%@page import="hgksoft.acquy.bo.LoaiSanPhamBO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" type="text/css" href="./css/user/style.css"/>
<link rel="stylesheet" type="text/css" href="./css/admin/admin-style.css"/>
<link rel="stylesheet" href="./css/user/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css"
      href="codebase/fonts/font_roboto/roboto.css" />
<link rel="stylesheet" type="text/css" href="codebase/dhtmlx.css" />
<script src="codebase/dhtmlx.js"></script>

<script type="text/javascript">
    function OnChangHangXe() {
        var strURL = window.location.href;
        if (strURL.indexOf("GoIndex") >= 0) {
            document.getElementsByName("FormTimKiemApDungUser")[0].action = "./GoIndex";
            document.getElementsByName("FormTimKiemApDungUser")[0].submit();
        }

        if (strURL.indexOf("XemChiTietSanPham") >= 0) {
            document.getElementsByName("FormTimKiemApDungUser")[0].action = "./XemChiTietSanPham";
            document.getElementsByName("FormTimKiemApDungUser")[0].submit();
        }

        if (strURL.indexOf("XemApDungDongXe") >= 0) {
            document.getElementsByName("FormTimKiemApDungUser")[0].action = "./XemApDungDongXe";
            document.getElementsByName("FormTimKiemApDungUser")[0].submit();
        }

        if (strURL.indexOf("XemDanhMucSanPham") >= 0) {
            document.getElementsByName("FormTimKiemApDungUser")[0].action = "./XemDanhMucSanPham";
            document.getElementsByName("FormTimKiemApDungUser")[0].submit();
        }

    }

    function OnChangeLoaiXe() {
        if (document.getElementsByName("selectedLoaiXe")[0].value !== "0") {
            // Get the modal
            var popup = document.getElementById('myModal');
            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // Load dữ liệu vào dòng xe vào Popup
            // Lấy dòng xe được chọn
            var selectedLoaiXe = document.getElementsByName("selectedLoaiXe")[0].value;
            $.ajax({
                type: "POST",
                url: "./LietKeDongXe",
                data: "selectedLoaiXe=" + selectedLoaiXe,
                success: function (response) {
                    // we have the response
                    $('#modal-body').html(response);
                    popup.style.display = "block";
                    // When the user clicks on <span> (x), close the modal
                    span.onclick = function () {
                        popup.style.display = "none";
                    };

                },
                error: function (e) {
                    alert('Error: ' + e);
                }
            });
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == popup) {
                popup.style.display = "none";
            }
        };
    }

    function OnSelectDongXe(maDongXe) {
        document.getElementsByName("FormTimKiemApDungUser")[0].action = "./XemApDungDongXe?maDongXe=" + maDongXe;
        document.getElementsByName("FormTimKiemApDungUser")[0].submit();
    }
</script>

<%
    LoaiSanPhamBO lspBO = new LoaiSanPhamBO();
    JSONArray jsonTree = lspBO.getJsonTree();
%>

<script>
    var myTreeView;
    window.onload = function doOnLoad() {
        myTreeView = new dhtmlXTreeView({
            parent: "menu-left",
            items:<%=jsonTree.toJSONString()%>
        });

        myTreeView.attachEvent("onSelect", function (id, mode) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function () {
                if (xhttp.readyState == 4 && xhttp.status == 200) {
                    document.getElementById("demo").innerHTML += xhttp.responseText + "<br>";
                }
            };
            xhttp.open("POST", "./LietKeSanPham", true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.send("select_id=" + id + "&select_mode=" + mode);
        });
    }
</script>

<div id="main-left">
    <div id="search-application">
        <h3>Bạn đang dùng xe gì?</h3>
        <div class="clr"></div>
        <s:form action="./GoIndex" method="post" name="FormTimKiemApDungUser" 
                id="FormTimKiemApDungUser" theme="simple">
            <table style="background-color: white;">
                <tr>
                    <td><s:select list="%{dsHangXeHM}" name="selectedHangXe" id="selectedHangXe"
                              cssStyle="width:210px; height:25px; border: 1px solid whitesmoke" 
                              onchange="OnChangHangXe()"/>
                        <s:set name="var1" value="selectedHangXe"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div>
                            <s:if test="#var1 == 0">
                                <s:select list="%{dsLoaiXeHM}" name="selectedLoaiXe" id="selectedLoaiXe" disabled="true"
                                          cssStyle="width:210px; height:25px; border: 1px solid whitesmoke"
                                          onchange="OnChangeLoaiXe()"/>
                            </s:if>
                            <s:else>
                                <s:select list="%{dsLoaiXeHM}" name="selectedLoaiXe" id="selectedLoaiXe" disabled="false"
                                          cssStyle="width:210px; height:25px; border: 1px solid whitesmoke"
                                          onchange="OnChangeLoaiXe()"/>
                            </s:else>

                        </div>

                    </td>
                </tr>
            </table>
        </s:form>
    </div>
    <div id="menu-left"></div>
    <script src="javascript/user/jquery.js" type="text/javascript"></script>
</div>

<!-- The Modal/Popup windows -->
<div id="myModal" class="modal">
    <!-- Modal content -->
    <div class="modal-content">
        <div class="modal-header">
            <span class="close">×</span>
            <div style="font-weight: bolder; font-size: 14px; margin-top: 7px">
                <label>Bạn đang sử dụng dòng xe gì?</label>
            </div>
        </div>
        <div class="modal-body" id="modal-body">
        </div>
        <div class="modal-footer">
            <h3></h3>
        </div>
    </div>
</div>
