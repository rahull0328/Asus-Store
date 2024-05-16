<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main" class="main">
        <div class="pagetitle">
            <h1><asp:Label ID="Label6" runat="server" Text="Dashboard" ForeColor="#F3333B"></asp:Label></h1>
        </div>
        <section class="section dashboard">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-xxl-2 col-md-4">
                            <div class="card info-card sales-card">
                                <div class="card-body">
                                    <h5 class="card-title">Categories</h5>
                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/assets/icons/icons8-category-50.png" />
                                        </div>
                                        <div class="ps-3">
                                            <h6>
                                                <asp:Label ID="Label2" runat="server" Text="1307"></asp:Label>
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xxl-2 col-md-4">
                            <div class="card info-card revenue-card">
                                <div class="card-body">
                                    <h5 class="card-title">Products</h5>
                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <asp:Image ID="Image2" runat="server" ImageUrl="~/assets/icons/icons8-products-50.png" />
                                        </div>
                                        <div class="ps-3">
                                            <h6>
                                                <asp:Label ID="Label3" runat="server" Text="1307"></asp:Label>
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xxl-2 col-md-4">
                            <div class="card info-card revenue-card">
                                <div class="card-body">
                                    <h5 class="card-title">Orders</h5>
                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/assets/icons/icons8-logistics-50.png" />
                                        </div>
                                        <div class="ps-3">
                                            <h6>
                                                <asp:Label ID="Label4" runat="server" Text="1307"/>
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="card-body">
            <h5 class="card-title"><asp:Label ID="Label8" runat="server" Text="Active Users" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"></asp:Label></h5>
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="col-10" DataKeyNames="Id" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowDeleting="gv1_RowDeleting" OnRowEditing="gv1_RowEditing" OnRowUpdating="gv1_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="UID">
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ph No">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("phno") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("phno") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Username">
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" HeaderText="Operations" ShowDeleteButton="True" ShowEditButton="True" />
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

