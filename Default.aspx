<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_BanHang.Default" %>
<%@ Register Src="~/cms/Display/DisplayLoadControl.ascx" TagPrefix="uc1" TagName="DisplayLoadControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Xing.vn thời trang xu hướng</title>
    <link href="cms/admin/css/index.css" rel="stylesheet" />
    <script src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server"> 
        <div id="dongke"></div>
<!--đầu trang-->
<div id="dautrang">
    <div class="contener">
        <div id="logo">
            <div id="logochu">
                <asp:Literal ID="ltrLogo" runat="server"></asp:Literal>
            </div>
            <div id="logoanh">
                <asp:Literal ID="ltrBanner" runat="server"></asp:Literal>
            </div>
        </div>
    </div>
</div>
        


        <!--menu đầu trang-->
<div id="menudautrang">
    <div class="contener">
        <div id="menutrai">
            <ul class="menungang">
                <asp:Literal ID="ltrMenu" runat="server"></asp:Literal>
            </ul>
        </div>
        <div id="dangnhap">
            <asp:PlaceHolder ID="plChuaDangNhap" runat="server">
                <ul>
                    <li class="dangnhap1">/<a href="Default.aspx?modul=ThanhVien&modulphu=DangKy">Đăng ký</a></li>
                    <li class="dangnhap2"><a href="Default.aspx?modul=ThanhVien&modulphu=DangNhap">Đăng nhập</a></li>
                </ul>
            </asp:PlaceHolder>
            
            <asp:PlaceHolder ID="plDaDangNhap" runat="server" Visible="False">
                <ul>
                    <li class="dangnhap1">/<asp:LinkButton ID="lbtDangXuat" runat="server" CausesValidation="False" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton></li>
                    <li class="dangnhap2"><asp:Literal ID="ltrTenKhachHang" runat="server"></asp:Literal></li>
                </ul>
            </asp:PlaceHolder>
        </div>
    </div>
</div>

        <span class="supp-name">Hoàng Châm</span>
                            <br />                    
                            <span class="phone">032.7837.363</span>
                        </p>                    
                    </div>
                    <div class="text-center">
                        <p>
                            <span class="supp-name">Trương Tuyết</span>
                            <br />
                            <span class="phone">096.3290.731</span>
                        </p>                            
                    </div>
                    <div class="text-center">
                        <p>
                            <span class="supp-name">Thời gian làm việc</span>
                            <br />
                            <span class="phone">24/24</span>
                        </p>
                    </div>
                </div>              
            </div>
            <div id="thanhtoan">
                <div class="title-thanhtoan">
                    <a>THÔNG TIN GIAO DỊCH</a>
                </div>
                <div class="thongtinnganhang">
                    <div class="nganhang">
                        <img src="pic/Logo/agribank.png" />
                        <p>
                            <strong>Ngân hàng Agribank</strong>
                            <br>
                            Số TK: 0327897369
                            <br>
                            Chủ TK: Hoàng Kim Châm
                            <br>
                            Chi nhánh Hà Nội
                        </p>
                    </div>
                    </div>
    <div id="trangphai">
        <uc1:DisplayLoadControl runat="server" ID="DisplayLoadControl" />
    </div>
</div>
        </div>

    <!--chân trang-->
    <div id="footer">
        <div class="contener">
            <div class=" menufoter">
                <p>©2024 xing</p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
