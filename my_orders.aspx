<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide.master" AutoEventWireup="true" CodeFile="my_orders.aspx.cs" Inherits="my_orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class=" mt-4 ms-4">
        <asp:Label ID="Label1" runat="server" Text="My Orders" CssClass="display-5 text-danger"></asp:Label>
    </div>
    <div class="mt-4 ms-4">
        <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="col-10" DataKeyNames="id" HeaderStyle-HorizontalAlign="Center" OnRowEditing="gv1_RowEditing">
            <Columns>
                <asp:TemplateField HeaderText="Id" Visible="False">
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>' Font-Bold="false"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>' Font-Bold="false"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ph No." HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("phno") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Price" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#string.Format("₹{0}",Eval("total_price"))%>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" EditText="View" HeaderText="Order Details" ShowCancelButton="False" ShowEditButton="True" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Large">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#F3333B" />
            <HeaderStyle BackColor="#F3333B" Font-Bold="False" ForeColor="White" Font-Italic="False" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="#F3333B" HorizontalAlign="Center" />
            <RowStyle BackColor="White" Font-Bold="true" Font-Size="Medium"/>
            <SelectedRowStyle BackColor="#000099" ForeColor="#F3333B" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
</asp:Content>

