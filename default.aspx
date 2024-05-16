<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        body {
            background-color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <asp:Image ID="Image1" runat="server" ImageUrl="assets/images/laptop.png" CssClass="d-block w-100" />
                <div class="carousel-caption d-none d-md-block" style="color: white">
                    <asp:Label ID="Label1" runat="server" Text="ROG Strix Series" Font-Size="XX-Large"></asp:Label><br />
                    <asp:Label ID="Label2" runat="server" Text="For Those Who Dare" Font-Size="Larger"></asp:Label><br />
                    <asp:DynamicHyperLink ID="dhl8" runat="server" NavigateUrl="~/products.aspx?id=1" CssClass="btn btn-outline-danger" Text="Shop Now" Width="300px" Height="40px" Font-Size="Larger" ForeColor="white"></asp:DynamicHyperLink>
                </div>
            </div>
            <div class="carousel-item">
                <asp:Image ID="Image2" runat="server" ImageUrl="assets/images/azoth.jpg" CssClass="d-block w-100" />
                <div class="carousel-caption d-none d-md-block" style="color: white">
                    <asp:DynamicHyperLink ID="dhl7" runat="server" NavigateUrl="~/product-details.aspx?id=2" CssClass="btn btn-light" Text="Shop Now" Width="300px" Height="40px" Font-Size="Larger" ForeColor="Blue"></asp:DynamicHyperLink>
                </div>
            </div>
            <div class="carousel-item">
                <asp:Image ID="Image3" runat="server" ImageUrl="assets/images/rog-ally.jpg" CssClass="d-block w-100" />
                <div class="carousel-caption d-none d-md-block" style="color: white">
                    <asp:Label ID="Label3" runat="server" Text="ROG Ally" Font-Size="XX-Large"></asp:Label><br />
                    <asp:Label ID="Label4" runat="server" Text="For Those Who Dare" Font-Size="Larger"></asp:Label><br />
                    <asp:DynamicHyperLink ID="DynamicHyperLink4" runat="server" NavigateUrl="~/product-details.aspx?id=5" CssClass="btn btn-outline-primary" Text="Shop Now" Width="300px" Height="40px" Font-Size="Larger" ForeColor="white"></asp:DynamicHyperLink>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="mt-5" style="color: #f3333b">
        <div class="display-5 text-center">
            <asp:Label ID="Label5" Font-Underline="false" CssClass="text-white" runat="server" Text="Shop By Category"></asp:Label>
        </div>
        <div class="row ms-3 mt-5 text-center">
            <div class="col-3">
                <div class="card" style="width: 18rem; border-radius: 0px">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/assets/images/asus-zephyrus-m16.jpg" />
                    <div class="card-body">
                        <p class="card-text">
                            <asp:Label ID="Label6" runat="server" Text="Laptops" ForeColor="#F3333B" Font-Size="X-Large"></asp:Label>
                        </p>
                        <asp:DynamicHyperLink ID="dhl1" runat="server" Text="Explore Now" NavigateUrl="~/products.aspx?id=1" CssClass="btn btn-outline-danger"></asp:DynamicHyperLink>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card" style="width: 18rem; border-radius: 0px">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/assets/images/rog-maximus.png" />
                    <div class="card-body">
                        <p class="card-text">
                            <asp:Label ID="Label7" runat="server" Text="Motherboards" ForeColor="#F3333B" Font-Size="X-Large"></asp:Label>
                        </p>
                        <asp:DynamicHyperLink ID="dhl2" runat="server" Text="Explore Now" NavigateUrl="~/products.aspx?id=5" CssClass="btn btn-outline-danger"></asp:DynamicHyperLink>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card" style="width: 18rem; border-radius: 0px">
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/assets/images/rog-graphics-card.png" />
                    <div class="card-body">
                        <p class="card-text">
                            <asp:Label ID="Label8" runat="server" Text="Graphics Card" ForeColor="#F3333B" Font-Size="X-Large"></asp:Label>
                        </p>
                        <asp:DynamicHyperLink ID="dhl3" runat="server" Text="Explore Now" NavigateUrl="~/products.aspx?id=7" CssClass="btn btn-outline-danger"></asp:DynamicHyperLink>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card" style="width: 18rem; border-radius: 0px">
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/assets/images/rog-rapture.png" />
                    <div class="card-body">
                        <p class="card-text">
                            <asp:Label ID="Label9" runat="server" Text="Routers" ForeColor="#F3333B" Font-Size="X-Large"></asp:Label>
                        </p>
                        <asp:DynamicHyperLink ID="DynamicHyperLink1" runat="server" Text="Explore Now" NavigateUrl="~/products.aspx?id=3" CssClass="btn btn-outline-danger"></asp:DynamicHyperLink>
                    </div>
                </div>
            </div>
        </div>
        <div class="p-5 text-center bg-body-black">
            <div class="container mt-4">
                <asp:Image ID="Image8" runat="server" ImageAlign="Middle" ImageUrl="~/assets/images/blank-logo.png" Height="100px" Width="200px" />
                <h1 class="text-body-emphasis">
                    <asp:Label ID="Label10" runat="server" Text="Featured ROG Products" ForeColor="#F3333B"></asp:Label></h1>
                <p class="col-lg-8 mx-auto lead">
                    <asp:Label ID="Label11" runat="server" Text="Unleash The Power Of Ultimate Gaming At Your Hands"></asp:Label>
                </p>
            </div>
        </div>
        <div class="container-fluid col-sm-4 col-md-6 col-lg-10 col-xxl-12">
            <div class="row text-white">
                <div class="col-md-6">
                    <div>
                        <asp:Image ID="Image9" runat="server" ImageUrl="~/assets/images/featured1.png" Height="500px" />
                    </div>
                </div>
                <div class="col-md-6 my-5">
                    <h1>
                        <asp:Label ID="Label12" runat="server" Text="ROG Zephyrus Duo"></asp:Label></h1>
                    <h5>
                        <asp:Label ID="Label13" runat="server" Text="The Asus ROG Zephyrus Duo is a powerful and feature packed device, offering top-end hardware and an excellent gaming experience"></asp:Label></h5>
                    <asp:DynamicHyperLink ID="dhl4" runat="server" Text="Shop Now" NavigateUrl="~/product-details.aspx?id=8" CssClass="btn btn-outline-light"></asp:DynamicHyperLink>
                </div>
            </div>
        </div>
        <div class="container-fluid col-sm-4 col-md-6 col-lg-10 col-xxl-12">
            <div class="row text-white">
                <div class="col-md-6 my-5">
                    <h1>
                        <asp:Label ID="Label14" runat="server" Text="ROG Flow Z13"></asp:Label></h1>
                    <h5>
                        <asp:Label ID="Label15" runat="server" Text="The ROG Flow Z13 is a 2-in-1 device that offers both tablet functionality and high-end gaming performance"></asp:Label></h5>
                    <asp:DynamicHyperLink ID="dhl5" runat="server" Text="Shop Now" NavigateUrl="~/product-details.aspx?id=10" CssClass="btn btn-outline-light"></asp:DynamicHyperLink>
                </div>
                <div class="col-md-6">
                    <div>
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/assets/images/featured2.png" />
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid col-sm-4 col-md-6 col-lg-10 col-xxl-12">
            <div class="row text-white">
                <div class="col-12 text-center">
                    <div>
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/assets/images/featured3.png" CssClass="img-fluid" ImageAlign="Middle" />
                    </div>
                    <h1>
                        <asp:Label ID="Label16" runat="server" Text="ROG Phone Ultimate 7"></asp:Label></h1>
                    <h5>
                        <asp:Label ID="Label17" runat="server" Text="The ROG Phone 7 Ultimate is a high-performance smartphone, perfectly designed to meet the expectations of the most demanding gamers"></asp:Label></h5>
                    <asp:DynamicHyperLink ID="dhl6" runat="server" Text="Shop Now" NavigateUrl="~/product-details.aspx?id=6" CssClass="btn btn-outline-light"></asp:DynamicHyperLink>
                </div>
            </div>
        </div>
        <div class="container-fluid col-sm-4 col-md-6 col-lg-10 col-xxl-12 mt-5">
            <div class="row text-white">
                <div class="col-md-6">
                    <div>
                        <asp:Image ID="Image12" runat="server" ImageUrl="~/assets/images/featured4.png" />
                    </div>
                </div>
                <div class="col-md-6 my-5">
                    <h3>
                        <asp:Label ID="Label18" runat="server" Text="ROG NVIDIA GeForce RTX 4070 Graphic Card"></asp:Label></h3>
                    <h5>
                        <asp:Label ID="Label19" runat="server" Text="The Republic of Gamers graphics card are designed and built for the most demanding enthusiasts and competitive overclockers"></asp:Label></h5>
                    <asp:DynamicHyperLink ID="DynamicHyperLink2" runat="server" Text="Shop Now" NavigateUrl="~/product-details.aspx?id=16" CssClass="btn btn-outline-light"></asp:DynamicHyperLink>
                </div>
            </div>
        </div>
        <div class="container-fluid col-sm-4 col-md-6 col-lg-10 col-xxl-12 mt-5">
            <div class="row text-white">
                <div class="col-md-6 my-5">
                    <h3>
                        <asp:Label ID="Label20" runat="server" Text="ROG Strix Z790-E Gaming Wifi II"></asp:Label></h3>
                    <h5>
                        <asp:Label ID="Label21" runat="server" Text="Style and substance come together like never before in the feature-packed ROG Strix Z790-E II.It is a conversation piece that also delivers enhanced DDR5 performance, ample PCIe 5.0 slots and the DIY-friendly Q-Design feature set that makes building and upgrading a breeze."></asp:Label></h5>
                    <asp:DynamicHyperLink ID="DynamicHyperLink3" runat="server" Text="Shop Now" NavigateUrl="~/product-details.aspx?id=17" CssClass="btn btn-outline-light"></asp:DynamicHyperLink><br />
                    <br />
                    <div class="mt-5">
                        <asp:Image ID="Image14" runat="server" ImageUrl="~/assets/icons/icon-intel-core.png" />
                        <asp:Image ID="Image15" runat="server" ImageUrl="~/assets/icons/icon-intel-z790.png" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div>
                        <asp:Image ID="Image13" runat="server" ImageUrl="~/assets/images/ROG-STRIX-Z790-E-II.png" Width="500px" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
