<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main" class="main">
        <div class="pagetitle">
            <asp:Label ID="Label1" runat="server" Text="Category Master" Font-Size="X-Large"></asp:Label>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <asp:DynamicHyperLink ID="DynamicHyperLink1" runat="server" Text="Dashboard" NavigateUrl="~/admin/dashboard.aspx"></asp:DynamicHyperLink>
                    </li>
                    <li class="breadcrumb-item active">
                        <asp:Label ID="Label2" runat="server" Text="Categories" ForeColor="#f3333b"></asp:Label>
                    </li>
                </ol>
            </nav>
        </div>
        <section class="section dashboard">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="Id" ShowFooter="True" Height="300px" Width="500px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Id">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="Button1" runat="server" Text="Insert" CssClass="btn-light" OnClick="Button1_Click" />
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("cat_name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("cat_name") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="Operations" ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button">
                        <FooterStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#F3333B" />
                <HeaderStyle BackColor="#F3333B" Font-Bold="False" ForeColor="White" Font-Italic="False" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="#F3333B" HorizontalAlign="Center" />
                <RowStyle BackColor="White" Font-Bold="true" Font-Size="Medium" />
                <SelectedRowStyle BackColor="#000099" ForeColor="#F3333B" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </section>
    </div>
</asp:Content>

