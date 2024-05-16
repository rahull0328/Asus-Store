<%@ Page Title="Login Here!" Language="C#" StylesheetTheme="Login" MasterPageFile="~/UserSide.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div class="content" style="box-shadow: rgba(0, 0, 0, 0.16) 0px 10px 36px 0px, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px;">
            <div class="right">
                <div class="title">
                    <asp:Label ID="Label2" runat="server" ForeColor="#f3333b" Font-Size="X-Large" Text="Connect To Asus Store"></asp:Label>
                </div>
                <div class="form">
                    <div class="inputbox">
                        <asp:Label ID="Label4" runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="TextBox1" TextMode="SingleLine" Font-Size="Large" Font-Names="Bahnschrift" runat="server"></asp:TextBox><br/>
                         <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="inputbox">
                        <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox><br/>
                        <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="create">
                        <asp:Button ID="Button1" runat="server" Text="Log In" Width="300px" Height="40px" BackColor="Black" ForeColor="#f3333b" OnClick="Button1_Click" />
                    </div>
                    <div class="additional">
                        <p>
                            <asp:Label ID="Label3" runat="server" Text="Don't have an account?"></asp:Label>
                            <asp:DynamicHyperLink ID="dhl1" runat="server" Text="Register" ForeColor="#f3333b" NavigateUrl="register.aspx"></asp:DynamicHyperLink>
                        </p>
                    </div>
                </div>
            </div>
            <div class="left">
                <asp:Image ID="Image1" ImageUrl="assets/images/logo.png" Width="150px" Height="80px" runat="server" />
                <asp:Label ID="Label1" runat="server" ForeColor="#f3333b" Font-Size="X-Large" Text="The Asus Store"></asp:Label>
            </div>
        </div>
    </section>
</asp:Content>

