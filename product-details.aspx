<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide.master" AutoEventWireup="true" CodeFile="product-details.aspx.cs" Inherits="product_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
            <div class="container">
                <div class="display-5 text-center my-3" style="color: #f3333b">
                    <h2>
                        <asp:Label ID="Label1" runat="server" Text="Product Details" Font-Underline="false"></asp:Label>
                    </h2>
                </div>
                    <asp:Repeater ID="rep1" runat="server">
                        <ItemTemplate>
                <div class="row">
                    <div class="col-md-6">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#string.Format("~/assets/images/{0}",Eval("image"))%>' CssClass="d-flex img-fluid justify-content-center align-content-center"/>
                    </div>
                            <div class="col-md-6">
                                <div class="my-5">
                                    <h3>
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                                    </h3>
                                    <span>
                                        <h5>₹<asp:Label ID="Label3" runat="server" Text='<%#Eval("slp")%>' Font-Bold="true"></asp:Label></h5>
                                    </span>
                                    <span>
                                        <h6>₹<asp:Label ID="Label4" runat="server" Text='<%#Eval("mrp")%>' Font-Strikeout="true"></asp:Label></h6>
                                    </span>
                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("description")%>' Font-Bold="true"></asp:Label>
                        </ItemTemplate>
                    </asp:Repeater>
                            <div class="my-3">
                                <h5>
                                    <asp:Label ID="Label6" runat="server" Text="Qunatity"></asp:Label></h5>
                            </div>
                            <div>
                                <asp:DropDownList ID="ddl1" runat="server" Width="40px" Height="20px" Font-Size="Larger">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>  
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Add To Cart" CssClass="btn btn-danger" OnClick="Button1_Click"/>
                        </div>
                    </div>
                </div>
            </div>        
</asp:Content>

