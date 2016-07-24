<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    <div id="menu-left">
        <ul>
            <li><a>Chuyên mục Ắc quy</a>
                <ul class="submenu">
                    <li><a href="#">Ôtô</a></li>
                    <li><a href="#">Xe máy</a></li>
                    <li><a href="#">Data Center</a></li>
                </ul>
            </li>
            <li><a>Bóng đèn</a>
                <ul class="submenu">
                    <li><a href="#">Xenon</a></li>
                    <li><a href="#">Tăng sáng</a>
                        <ul class="submenu">
                            <li><a href="#">BOSCH</a></li>
                            <li><a href="#">OSRAM</a></li>
                        </ul>                            
                    </li>
                    <li><a href="#">Halogen</a></li>
                </ul>
            </li>
            <li><a>Bugi</a>
                <ul class="submenu">
                    <li><a href="#">Máy xăng</a></li>
                    <li><a href="#">Máy dầu</a>
                        <ul class="submenu">
                            <li><a href="#">BOSCH</a></li>
                            <li><a href="#">Denso</a></li>
                        </ul>                            
                    </li>
                </ul>
            </li>
            <li><a>Gạt mưa</a>
                <ul class="submenu">
                    <li><a href="#">Dòng xe Châu Âu</a></li>
                    <li><a href="#">Xe Nhật</a></li>
                    <li><a href="#">Xe Hàn Quốc</a></li>
                </ul>
            </li>
            <li><a>Còi xe</a>
                <ul class="submenu">
                    <li><a href="#">BOSCH</a></li>
                    <li><a href="#">DENSO</a></li>
                </ul>
            </li>
            <li><a>Phụ kiện thông minh</a>
                <ul class="submenu">
                    <li><a href="#">Con đội điện</a></li>
                    <li><a href="#">Máy bơm vỏ thông minh</a></li>
                    <li><a href="#">Đồ đo áp xuất</a></li>
                    <li><a href="#">Dụng cụ vá vỏ</a></li>
                </ul>
            </li>

        </ul>
    </div>
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

