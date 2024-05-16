<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="my-3 display-5 text-center">
        <asp:Label ID="Label1" runat="server" Text="Laptop" ForeColor="#F3333B" Font-Underline="true"></asp:Label>
    </div>
    <asp:Repeater ID="rep1" runat="server">
        <HeaderTemplate>
            <div class="mainContent">
        </HeaderTemplate>
        <ItemTemplate>
            <div class="card mx-3 my-2">
                <div class="row g-0">
                    <div class="col-md-3 d-flex justify-content-center align-items-center">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#string.Format("~/admin/upload/{0}",Eval("image"))%>' CssClass="img-fluid rounded-start" Height="200px"/>
                    </div>
                    <div class="col-md-7">
                        <div class="card-body">
                            <h5 class="card-title">
                                <div class="mt-3"><b><asp:Label ID="Label1" runat="server" Text='<%#Eval("name")%>' CssClass="mt-3"></asp:Label></b></div>
                                <div class="mt-2"><b><asp:Label ID="Label2" runat="server" Text='<%#string.Format("₹{0}",Eval("slp"))%>'></asp:Label></b></div>
                                <div class="mt-2"><s><asp:Label ID="Label3" runat="server" Text='<%#string.Format("₹{0}",Eval("mrp"))%>' CssClass="mt-2"></asp:Label></s></div>
                            </h5>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex justify-content-center align-items-center">
                        <div class="card-body">                          
                            <asp:DynamicHyperLink ID="dhl1" runat="server" Text="Add To Cart" NavigateUrl='<%#string.Format("~/add-to-cart.aspx?pid={0}",Eval("id"))%>' CssClass="btn btn-danger"></asp:DynamicHyperLink>
                            <asp:DynamicHyperLink ID="dhl2" runat="server" Text="More Details" NavigateUrl='<%#string.Format("~/product-details.aspx?id={0}",Eval("id"))%>' CssClass="btn btn-dark mt-3"></asp:DynamicHyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <FooterTemplate>
            </div>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

