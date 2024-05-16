<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="py-5 text-center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/assets/icons/icons8-checkout-100.png" CssClass="d-block mx-auto" />
            <h2>
                <asp:Label ID="Label1" runat="server" Text="Checkout Form"></asp:Label>
            </h2>
        </div>
        <div class="row g-5">
            <div class="col-md-5 col-lg-4 order-md-last">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-dark">
                        <asp:Label ID="Label2" runat="server" Text="Your Cart"></asp:Label>
                    </span>
                    <span class="badge bg-dark rounded-pill">
                        <asp:Label ID="Label3" runat="server" Font-Size="Small" Font-Bold="false" Text="Items are as follows" ForeColor="#F3333B"></asp:Label>
                    </span>
                </h4>
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between lh-sm row bg-black text-danger">
                        <div class="col-6">
                            <asp:Label ID="Label17" runat="server" Text="Product Name:-"></asp:Label>
                        </div>
                        <div class="col-3">
                            <asp:Label ID="Label19" runat="server" Text="Qty:-"></asp:Label>
                        </div>
                        <div class="col-3">
                            <asp:Label ID="Label18" runat="server" Text="Price:-"></asp:Label>
                        </div>
                    </li>
                    <asp:Repeater ID="rep1" runat="server">
                        <ItemTemplate>
                            <li class="list-group-item d-flex justify-content-between lh-sm row">
                                <div class="col-7">
                                    <h6 class="my-0">
                                        <asp:Label ID="Label13" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                                    </h6>
                                </div>
                                <div class="col-2">
                                    <h6 class="my-0">
                                        <asp:Label ID="Label14" runat="server" Text='<%#Eval("qty")%>'></asp:Label>
                                    </h6>
                                </div>
                                <div class="col-3">
                                    <asp:Label ID="Label15" runat="server" Text='<%#Eval("total_price")%>'></asp:Label>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <li class="list-group-item d-flex justify-content-between lh-sm row bg-black text-danger">
                        <div class="col-7">
                            <asp:Label ID="Label16" runat="server" Text="Grand Total:-"></asp:Label>
                        </div>
                        <div class="col-2"></div>
                        <div class="col-3">
                            <asp:Label ID="grandTotalLabel" runat="server" Text=""></asp:Label>
                        </div>
                    </li>
                </ul>
                <br/><br/>
                <asp:ValidationSummary ID="valSum" runat="server" ForeColor="Red" DisplayMode="BulletList" />
            </div>
            <div class="col-md-7 col-lg-8">
                <h4 class="mb-3">Shipping address</h4>
                <div class="row g-3">
                    <div class="col-12">
                        <asp:Label ID="Label4" runat="server" Text="Full Name"></asp:Label>
                        <asp:TextBox ID="txt1" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txt1" ErrorMessage="Enter First Name" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-12">
                        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txt2" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txt2" ForeColor="Red" ErrorMessage="Enter Email" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regex1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txt2" ForeColor="Red" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" Display="None"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-12">
                        <asp:Label ID="Label6" runat="server" Text="Phone Number"></asp:Label>
                        <asp:TextBox ID="txt3" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txt3" ForeColor="Red" ErrorMessage="Enter Ph. No." Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regex2" runat="server" ErrorMessage="Enter Exact 10 No." ControlToValidate="txt3" ForeColor="Red" ValidationExpression="\d{10}" Display="None"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-12">
                        <asp:Label ID="Label7" runat="server" CssClass="form-label" Text="Address"></asp:Label>
                        <asp:TextBox ID="txt4" runat="server" TextMode="MultiLine" CssClass="form-control" Columns="150"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txt4" ForeColor="Red" ErrorMessage="Enter Address" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-12">
                        <asp:Label ID="Label8" runat="server" CssClass="form-label" Text="City"></asp:Label>
                        <asp:TextBox ID="txt5" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="txt5" ForeColor="Red" ErrorMessage="Enter City" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-5">
                        <asp:Label ID="Label9" runat="server" CssClass="form-label" Text="Country"></asp:Label>
                        <asp:DropDownList ID="ddl1" runat="server" CssClass="form-select">
                            <asp:ListItem Selected="True">India</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label10" runat="server" CssClass="form-label" Text="State"></asp:Label>
                        <asp:DropDownList ID="ddl2" runat="server" CssClass="form-select">
                            <asp:ListItem Selected="True">Gujarat</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="Label11" runat="server" CssClass="form-label" Text="Zip"></asp:Label>
                        <asp:TextBox ID="txt6" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="txt6" ForeColor="Red" ErrorMessage="Enter Zip Code"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regex3" runat="server" ErrorMessage="Enter Exact 6 Digit Zip Code." ControlToValidate="txt6" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <h4 class="mb-3">
                    <asp:Label ID="Label12" runat="server" CssClass="form-label" Text="Payment"></asp:Label>
                </h4>
                <div class="my-3">
                    <asp:RadioButton ID="rb1" runat="server" Text="Online Payment" Checked="false" Enabled="false" Font-Strikeout="true" /><br />
                    <asp:RadioButton ID="rb2" runat="server" Text="Cash On Delivery" Checked="true" Enabled="true" AutoPostBack="true" /><br />
                    <p class="my-4" />
                    <asp:Button ID="btn1" runat="server" Text="Place Order" CssClass="w-100 btn btn-lg" Style="background-color: black; color: #f3333b" OnClick="btn1_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

