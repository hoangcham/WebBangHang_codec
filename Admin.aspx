<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Web_BanHang.Admin" %>

<%@ Register Src="~/cms/admin/AdminLoadControl.ascx" TagPrefix="uc1" TagName="AdminLoadControl" %>
<%@ Register Src="~/cms/Display/DisplayLoadControl.ascx" TagPrefix="uc1" TagName="DisplayLoadControl" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Trang quản trị </title>
    <link href="cms/admin/css/cssAdmin.css" rel="stylesheet" />
    <script src="cms/admin/js/jquery-3.1.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <%--Header--%>
        <div>
          <div id="header">
             <div class="container">
               <div class="logo">
                  <a href="/Admin.aspx"><img src="pic/Logo/xing.jpg" /></a>
              </div>
            </div>               
         </div>
        </div>

        <%--MenuChinh--%>
        <div class="MenuChinh">
            <div class="container">
                <ul>
                    <li><a href ="/Admin.aspx?modul=SanPham" title ="Sản phẩm">Sản phẩm</a></li>
                    <li><a href ="/Admin.aspx?modul=QuangCao" title ="Quảng Cáo">Quảng cáo</a></li>
                    <li><a href ="/Admin.aspx?modul=KhachHang" title ="Khách hàng">Khách hàng</a></li>
                    <li><a href ="/Admin.aspx?modul=Menu" title ="Menu">Menu</a></li>
                    <li><a href ="/Admin.aspx?modul=TaiKhoan" title ="Tài khoản">Tài Khoản</a></li>          
                </ul>
            </div>
        </div>
        </div>

       <%--Phần nội dung trang --%>
        <uc1:AdminLoadControl runat="server" ID="AdminLoadControl" />
    </form>
</body>
</html>

