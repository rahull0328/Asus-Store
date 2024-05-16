<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container py-5">
        <h2 class="pb-2 border-bottom">
            <asp:Label ID="Label1" runat="server" Text="About Us" CssClass="display-5 text-danger"></asp:Label>
        </h2>
        <div class="row align-items-md-center py-5">
            <div class="col-6 d-flex flex-column align-items-start gap-2">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3100.059787423899!2d70.05498485840218!3d22.481166906154147!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39576b62037b4df1%3A0xc80e6c5d1968e16f!2sAsus%20Exclusive%20Store%20-%20C%20P%20Consultants!5e0!3m2!1sen!2sin!4v1701406319225!5m2!1sen!2sin" width="100%" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="col-6">
                <div class="row row-cols-1 row-cols-sm-2 g-4">
                    <div class="col d-flex flex-column gap-2">
                        <div class="feature-icon-small d-inline-flex align-items-left justify-content-left">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/assets/icons/icons8-address-50.png" />
                        </div>
                        <h4 class="fw-semibold mb-0 text-body-emphasis">
                            <asp:Label ID="Label2" runat="server" Text="Address" ForeColor="#F3333B"></asp:Label></h4>
                        <p class="text-body-secondary">
                            <asp:Label ID="Label3" ForeColor="Black" runat="server" Text="G-1, Ground Floor, KK Avenue, opp. Jogger's Park, Park Colony, Jamnagar, Gujarat 361008"></asp:Label></p>
                    </div>
                    <div class="col d-flex flex-column gap-2">
                        <div class="feature-icon-small d-inline-flex align-items-left justify-content-left">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/assets/icons/icons8-clock-50.png" />
                        </div>
                        <h4 class="fw-semibold mb-0 text-body-emphasis">
                            <asp:Label ID="Label5" runat="server" Text="Open : Closes" ForeColor="#F3333B"></asp:Label></h4>
                         <p class="text-body-secondary">
                            <asp:Label ID="Label6" ForeColor="Black" runat="server" Text="Monday-Saturday : <br>10:00 AM To 8:30 PM<br>Sunday : Closed"></asp:Label></p>
                    </div>
                    <div class="col d-flex flex-column gap-2">                  
                            <div class="feature-icon-small d-inline-flex align-items-left justify-content-left">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/assets/icons/icons8-website-50.png" />
                            </div>
                            <h4 class="fw-semibold mb-0 text-body-emphasis">
                                <asp:Label ID="Label4" runat="server" Text="Website" ForeColor="#F3333B"></asp:Label></h4>
                            <p class="text-body-secondary">
                                <asp:DynamicHyperLink ID="dhl1" runat="server" Text="wheretobuy.asus.in" NavigateUrl="https://wheretobuy.asus.in/store/1148-Asus-Store-Jamnagar-Gujarat" CssClass="text-decoration-none text-dark"></asp:DynamicHyperLink></p>
                    </div>
                    <div class="col d-flex flex-column gap-2">
                        <div class="feature-icon-small d-inline-flex align-items-left justify-content-left">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/assets/icons/icons8-phone-number-50.png" />
                        </div>
                        <h4 class="fw-semibold mb-0 text-body-emphasis"><asp:Label ID="Label7" runat="server" Text="Phone No." ForeColor="#F3333B"></asp:Label></h4>
                        <p class="text-body-secondary"><asp:Label ID="Label8" runat="server" Text="+91 75758 07200" Font-Bold="true" ForeColor="Black"></asp:Label></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

