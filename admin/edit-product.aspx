<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.master" AutoEventWireup="true" CodeFile="edit-product.aspx.cs" Inherits="admin_edit_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main" class="main">
        <div class="pagetitle">
            <asp:Label ID="Label2" runat="server" Text="Edit Product" Font-Size="X-Large"></asp:Label>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <asp:DynamicHyperLink ID="DynamicHyperLink1" runat="server" Text="Dashboard" NavigateUrl="~/admin/dashboard.aspx"></asp:DynamicHyperLink>
                    </li>
                    <li class="breadcrumb-item">
                        <asp:DynamicHyperLink ID="DynamicHyperLink2" runat="server" Text="Product Master" NavigateUrl="~/admin/product.aspx"></asp:DynamicHyperLink>
                    </li>
                    <li class="breadcrumb-item active">
                        <asp:Label ID="Label1" runat="server" Text="Edit Product" ForeColor="#f3333b"></asp:Label>
                    </li>
                </ol>
            </nav>
        </div>
        <section class="section dashboard">
            <div class="card card-body mx-3 my-4">
                <div class="row my-3">
                    <div class="col-3">
                        <asp:Label ID="Label3" runat="server" Text="Product Name:-"></asp:Label>
                    </div>
                    <div class="col-3">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="SingleLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Product's Name Is Required" ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label4" runat="server" Text="Product Category:-"></asp:Label>
                    </div>
                    <div class="col-3">
                        <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="true"></asp:DropDownList>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-3">
                        <asp:Label ID="Label5" runat="server" Text="Product MRP:-"></asp:Label>
                    </div>
                    <div class="col-3">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="SingleLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="Product's MRP Is Required" ControlToValidate="TextBox2" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label6" runat="server" Text="Product Selling Price:-"></asp:Label>
                    </div>
                    <div class="col-3">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="SingleLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="Product's Selling Price Is Required" ControlToValidate="TextBox3" Display="None"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-12">
                        <asp:Label ID="Label7" runat="server" Text="Product Description:-"></asp:Label>
                    </div>
                    <div class="col-12">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Multiline" Columns="100"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv4" runat="server" ErrorMessage="Product's Description Is Required" ControlToValidate="TextBox4" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-12">
                        <asp:Label ID="Label8" runat="server" Text="Product Image:-"></asp:Label>
                    </div>
                    <div class="col-12">
                        <asp:Image ID="Image1" runat="server" Height="100px" Visible="false"/>
                        <asp:FileUpload ID="FileUpload1" runat="server" Visible="false"/><br/>
                        <asp:Button ID="btn1" runat="server" Text="Delete" CssClass="btn btn-danger mt-1" Visible="false" OnClick="btn1_Click"/>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-3">
                        <asp:Button ID="btn2" runat="server" Text="Update" CssClass="btn btn-success" OnClick="btn2_Click"/>&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn3" runat="server" Text="Go Back" CssClass="btn btn-dark" OnClick="btn3_Click"/>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-12">
                        <asp:ValidationSummary ID="valSum" runat="server" ForeColor="Red" DisplayMode="BulletList" />
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

