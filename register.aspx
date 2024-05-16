<%@ Page Title="Register Here!" Language="C#" StylesheetTheme="Register" MasterPageFile="~/UserSide.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div class="content" style="box-shadow: rgba(0, 0, 0, 0.16) 0px 10px 36px 0px, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px;">
            <div class="left">
                <asp:Image ID="Image1" ImageUrl="assets/images/logo.png" Width="150px" Height="80px" runat="server" />
                <asp:Label ID="Label1" runat="server" ForeColor="#f3333b" Font-Size="X-Large" Text="The Asus Store"></asp:Label>
            </div>
            <div class="right">
                <div class="title">
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="#f3333b" Text="Welcome To Asus Store"></asp:Label>
                </div>
                <div class="form">
                    <div class="inputbox">
                        <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Full Name"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Font-Names="Bahnschrift"></asp:TextBox><br/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="Enter Full Name"></asp:RequiredFieldValidator>
                    </div>
                    <div class="inputbox">
                        <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Email"></asp:Label>                 
                        <asp:TextBox ID="TextBox2" TextMode="Email" Font-Names="Bahnschrift" runat="server"></asp:TextBox><br/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator>
                    </div>
                    <div class="inputbox">
                        <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Contact No"></asp:Label>
                        <asp:TextBox ID="TextBox3" TextMode="Number" Font-Names="Bahnschrift" runat="server"></asp:TextBox><br/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="Enter Ph. No."></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Exact 10 No." ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </div>
                    <div class="inputbox">
                        <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="Username"></asp:Label>
                        <asp:TextBox ID="TextBox4" Font-Names="Bahnschrift" TextMode="SingleLine" runat="server"></asp:TextBox><br/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                    </div>
                    <div class="inputbox">
                        <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="Password"></asp:Label>
                        <asp:TextBox ID="TextBox5" TextMode="Password" runat="server"></asp:TextBox><br/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ForeColor="Red" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Weak Password" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,16}$"></asp:RegularExpressionValidator>
                    </div>
                    <div class="create">
                        <asp:Button ID="btn1" runat="server" Text="Register" Width="200px" Height="40px" ForeColor="#f3333b" BackColor="Black" OnClick="btn1_Click" />
                    </div>
                    <div class="additional">
                        <p>
                            <asp:Label ID="Label3" runat="server" Text="Already have an account?"></asp:Label>
                            <asp:DynamicHyperLink ID="dhl1" runat="server" Text="Login" ForeColor="#f3333b" NavigateUrl="login.aspx"></asp:DynamicHyperLink>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

