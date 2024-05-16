<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class=" mt-4 ms-4">
        <asp:Label ID="Label1" runat="server" Text="Shopping Cart" CssClass="display-5 text-danger"></asp:Label>
    </div>
    <div class="">
        <div class="mt-3 ms-3 text-center">
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="col-10" DataKeyNames="id" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowDeleting="gv1_RowDeleting" OnRowEditing="gv1_RowEditing" OnRowUpdating="gv1_RowUpdating" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="Id" Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%#string.Format("~/assets/images/{0}",Eval("image"))%>' CssClass="img-fluid" Height="100px" Width="100px" />
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="btn2" runat="server" Text="Go Back" CssClass="btn btn-dark" OnClick="btn2_Click" />
                        </FooterTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Name" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="btn1" runat="server" Text="Proceed To Checkout" CssClass="btn btn-success" OnClick="btn1_Click" />
                        </FooterTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Price" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#string.Format("₹{0}",Eval("price"))%>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt1" runat="server" MaxLength="1" AutoPostBack="true" Text='<%#Eval("qty")%>' Width="50px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("qty") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="Label7" runat="server" Text="Grand Total:-" CssClass="text-white" Font-Size="Large"></asp:Label>
                        </FooterTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Price" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%#string.Format("₹{0}",Eval("total_price"))%>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="Label6" runat="server" Text="0"></asp:Label>
                        </FooterTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large" HeaderText="Operations" ShowDeleteButton="True" ShowEditButton="True">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#F3333B" />
                <HeaderStyle BackColor="#F3333B" Font-Bold="False" ForeColor="White" Font-Italic="False" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="#F3333B" HorizontalAlign="Center" />
                <RowStyle BackColor="White" Font-Bold="true" Font-Size="Large" />
                <SelectedRowStyle BackColor="#000099" ForeColor="#F3333B" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>

