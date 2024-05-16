<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" StylesheetTheme="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="contact-form-wrapper d-flex justify-content-center">
        <div class="contact-form">
            <center><asp:Image ID="Image1" runat="server" ImageUrl="~/assets/images/blank-logo.png" Height="50px" Width="100px"/></center>
            <h5 class="title">
                <asp:Label ID="Label1" runat="server" Text="Contact Us" ForeColor="#F3333B"></asp:Label></h5>
            <p class="description">
                <asp:Label ID="Label2" runat="server" Text="Feel free to contact us if you need any assistance, any help or another question."></asp:Label>
            </p>
            <div>
                <asp:Label ID="Label3" runat="server" Text="Name" ForeColor="#f3333b" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="txt1" runat="server" TextMode="SingleLine" CssClass="form-control border-white mb-3 form-input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Enter Name" ForeColor="#f3333b" Font-Size="Large" ControlToValidate="txt1"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="Label4" runat="server" Text="Email" ForeColor="#f3333b" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="txt2" runat="server" TextMode="SingleLine" CssClass="form-control border-white mb-3 form-input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Email" ForeColor="#f3333b" Font-Size="Large" ControlToValidate="txt2"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regex1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txt2" ForeColor="Red" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator>
            </div>
            <div>
                <asp:Label ID="Label5" runat="server" Text="Message" ForeColor="#f3333b" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="txt3" runat="server" TextMode="MultiLine" Columns="30" Rows="5" CssClass="form-control border-white mb-3 form-input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Message" ForeColor="#f3333b" Font-Size="Large" ControlToValidate="txt3"></asp:RequiredFieldValidator>
            </div>
            <div class="submit-button-wrapper">
                <asp:Button ID="btn1" runat="server" Text="Send" OnClick="btn1_Click" />
            </div>
        </div>
    </div>
</asp:Content>

