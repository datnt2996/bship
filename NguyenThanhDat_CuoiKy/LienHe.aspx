<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- ***** Breadcumb Area Start ***** -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)">
    </div>
    <!-- ***** Breadcumb Area End ***** -->

    <!-- ***** Contact Area Start ***** -->
    <div class="dorne-contact-area d-md-flex" id="contact">
        <!-- Contact Form Area -->
        <div class="contact-form-area equal-height">
            <div class="contact-text">
                <h4>Cảm ơn các bạn đã sử dụng dịch vụ của chúng tôi</h4>
                <p>Chúng tôi rất vui khi các bạn biết tới Bship. Đảm bảo chất lượng, đêm đến cho mọi người sự tin tưởng với hệ thống xử lý nhanh và chính xác</p>
                    <div class="single-contact-info">
                        <h6><i class="fa fa-map-signs" aria-hidden="true"></i> Nguyễn Thành Đạt</h6>
                        <h6><i class="fa fa-map-signs" aria-hidden="true"></i> KTCN, TDMU, Số 06 Trần Văn Ơn, Phú Hòa, Thủ Dầu Một, Bình Dương</h6>
                    </div>
                    <div class="single-contact-info">
                        <h6><i class="fa fa-envelope-o" aria-hidden="true"></i> datnt2996@gmail.com</h6>
                        <h6><i class="fa fa-phone" aria-hidden="true"></i> 0910456345</h6>
                    </div>
                </div>
            </div>
            <div class="contact-form">
                <div class="contact-form-title">
                    <h6>Liên hệ cho chúng tôi</h6>
                </div>
                <form action="#">
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <input type="text" name="name" class="form-control" placeholder="Your Name">
                        </div>
                        <div class="col-12 col-md-6">
                            <input type="email" name="email" class="form-control" placeholder="Email Address">
                        </div>
                        <div class="col-12">
                            <input type="text" name="subject" class="form-control" placeholder="Subject">
                        </div>
                        <div class="col-12">
                            <textarea name="message" class="form-control" id="Message" cols="30" rows="10" placeholder="Your Message"></textarea>
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn dorne-btn">gửi</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Map Area -->
        
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
    
    <!-- Google Maps js -->
    
    <!-- Active JS -->
    <script src="js/active.js"></script>
    </div>
    <!-- ***** Contact Area End ***** -->

</asp:Content>
