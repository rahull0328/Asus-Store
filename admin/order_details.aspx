<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.master" AutoEventWireup="true" CodeFile="order_details.aspx.cs" Inherits="admin_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main" class="main">
         <div class="pagetitle">
            <asp:Label ID="Label1" runat="server" Text="View Order Details" Font-Size="X-Large"></asp:Label>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <asp:DynamicHyperLink ID="DynamicHyperLink1" runat="server" Text="Dashboard" NavigateUrl="~/admin/dashboard.aspx"></asp:DynamicHyperLink>
                    </li>
                    <li class="breadcrumb-item">
                        <asp:DynamicHyperLink ID="DynamicHyperLink2" runat="server" Text="Orders" NavigateUrl="~/admin/orders.aspx"></asp:DynamicHyperLink>
                    </li>
                    <li class="breadcrumb-item active">
                        <asp:Label ID="Label3" runat="server" Text="Order Details" ForeColor="#f3333b"></asp:Label>
                    </li>
                </ol>
            </nav>
        </div>
        <div class="card mb-4 mt-3" style="border-radius: 0px">
            <div class="card-header bg-danger text-white" style="border-radius: 0px">
                <asp:Label ID="Label2" runat="server" Text="Order ID: "></asp:Label><asp:Label ID="Label10" runat="server" Font-Bold="true"></asp:Label>
            </div>
            <div class="card-body overflow-auto" style="border-radius: 0px">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Subtotal</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rep1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#string.Format("~/admin/upload/{0}",Eval("image"))%>' CssClass="img-fluid" Height="50px" Width="50px" />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text='<%#string.Format("₹{0}",Eval("price"))%>' Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("qty")%>' Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text='<%#"₹"+Convert.ToDouble(Eval("price"))*Convert.ToDouble(Eval("qty"))%>' Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <tr>
                            <td colspan="4">
                                <strong>
                                    <asp:Label ID="Label8" runat="server" Text="Grand Total:"></asp:Label>
                                </strong>
                            </td>
                            <td>
                                <strong>
                                    <asp:Label ID="Label9" runat="server"></asp:Label>
                                </strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

