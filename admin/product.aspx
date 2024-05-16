<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main" class="main">
        <div class="pagetitle">
            <asp:Label ID="Label1" runat="server" Text="Product Master" Font-Size="X-Large"></asp:Label>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <asp:DynamicHyperLink ID="DynamicHyperLink1" runat="server" Text="Dashboard" NavigateUrl="~/admin/dashboard.aspx"></asp:DynamicHyperLink>
                    </li>
                    <li class="breadcrumb-item active">
                        <asp:Label ID="Label2" runat="server" Text="Products" ForeColor="#f3333b"></asp:Label>
                    </li>
                </ol>
            </nav>
        </div>
        <section class="section dashboard">
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Add Product
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <div class="row">
                                <div class="col-3">
                                    <asp:Label ID="Label3" runat="server" Text="Enter Product's Name:-"></asp:Label>
                                </div>
                                <div class="col-3">
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Product's Name Is Required" ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-3">
                                    <asp:Label ID="Label4" runat="server" Text="Choose Product's Category:-"></asp:Label>
                                </div>
                                <div class="col-3">
                                    <asp:DropDownList ID="ddl1" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="row my-3">
                                <div class="col-3">
                                    <asp:Label ID="Label9" runat="server" Text="Enter Product's MRP:-"></asp:Label>
                                </div>
                                <div class="col-3">
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="Product's MRP Is Required" ControlToValidate="TextBox2" Display="None"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-3">
                                    <asp:Label ID="Label10" runat="server" Text="Enter Product's Selling Price:-"></asp:Label>
                                </div>
                                <div class="col-3">
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="Product's Selling Price Is Required" ControlToValidate="TextBox3" Display="None"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row my-3">
                                <div class="col-12">
                                    <asp:Label ID="Label11" runat="server" Text="Enter Product's Description:-"></asp:Label>
                                </div>
                                <div class="col-12 mt-3">
                                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Multiline" Columns="100"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv4" runat="server" ErrorMessage="Product's Description Is Required" ControlToValidate="TextBox4" Display="None"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row my-3">
                                <div class="col-12">
                                    <asp:Label ID="Label12" runat="server" Text="Select Product's Image:-"></asp:Label>
                                </div>
                                <div class="col-12 mt-3">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfv5" runat="server" ErrorMessage="Product's Image Is Required" ControlToValidate="FileUpload1" Display="None"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row my-3">
                                <div class="col-3">
                                    <asp:Button ID="btn2" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btn2_Click" />&nbsp;&nbsp;
                                    <asp:Button ID="btn3" runat="server" Text="Reset" CssClass="btn btn-dark" OnClick="btn3_Click" />
                                </div>
                            </div>
                            <div class="row my-3">
                                <div class="col-12">
                                    <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                                    <asp:ValidationSummary ID="valSum" runat="server" ForeColor="Red" DisplayMode="BulletList" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="col-12" HeaderStyle-HorizontalAlign="Center" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#string.Format("~/admin/upload/{0}",Eval("image"))%>' Height="50px" />
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("name")%>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category Name">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="true"></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("cat_name")%>'></asp:Label>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="MRP">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("mrp")%>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("mrp")%>'></asp:Label>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Selling Price">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("slp")%>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("slp")%>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%#Eval("description")%>' TextMode="MultiLine"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%#Eval("description")%>'></asp:Label>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" HeaderText="Operations" ShowDeleteButton="True" ShowEditButton="True">
                        <HeaderStyle HorizontalAlign="Center" />
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
        </section>
    </div>
</asp:Content>

