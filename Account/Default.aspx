<%@ Page Title="Default" Language="C#" MasterPageFile="~/Account/Site3.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspNet1.Account.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <!-- breadcrumb -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="Default.aspx"><i class="fas fa-bars fa-fw"></i></a>
            </li>
            <li class="breadcrumb-item active">
                <a href="Default.aspx">
                    <asp:Label ID="lblAdmin" runat="server" Text=""></asp:Label>
                </a>
            </li>
        </ol>
    </nav>
    <!-- Content section -->
    <section class="py-5">
        <div class="container">
            <h1>Section Heading</h1>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim blanditiis nemo distinctio impedit accusamus exercitationem
            esse maiores hic magnam obcaecati labore officia excepturi quasi quisquam quam voluptate reiciendis, reprehenderit fugit?
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphSidebar" runat="server">
</asp:Content>