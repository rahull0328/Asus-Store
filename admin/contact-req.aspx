<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.master" AutoEventWireup="true" CodeFile="contact-req.aspx.cs" Inherits="admin_contact_req" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main" class="main">
        <div class="pagetitle">
            <asp:Label ID="Label1" runat="server" Text="Contact Master" Font-Size="X-Large"></asp:Label>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <asp:DynamicHyperLink ID="dhl1" runat="server" Text="Dashboard" NavigateUrl="~/admin/dashboard.aspx"></asp:DynamicHyperLink>
                    </li>
                    <li class="breadcrumb-item active">
                        <asp:Label ID="Label2" runat="server" Text="Contact Request" ForeColor="#f3333b"></asp:Label>
                    </li>
                </ol>
            </nav>
        </div>
        <section class="section dashboard">
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="col-10" DataKeyNames="id" OnRowDeleting="gv1_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="Id" Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("id")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("name")%>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("email")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("email")%>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Message">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("message")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Text='<%#Eval("messgae")%>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="Operations" ShowDeleteButton="True" ButtonType="Button"/>
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
        </section>
    </div>
</asp:Content>

