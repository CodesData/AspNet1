<%@ Page Title="SignIn" Language="C#" MasterPageFile="~/Account/Site2.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="AspNet1.Account.SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <div class="card card-login mx-auto mt-5">
        <h5 class="card-header">Sign in</h5>
        <div class="card-body">
            <div class="form-group mt-2">
                <div class="form-label-group">
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control form-control-color" Width="100%"
                        placeholder="User name" autofocus="autofocus">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" CssClass="text-danger"
                        ErrorMessage="User Name field is required" Font-Size="Small">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group mt-2">
                <div class="form-label-group">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control form-control-color" Width="100%"
                        placeholder="Password">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" CssClass="text-danger"
                        ErrorMessage="Password field is required" Font-Size="Small">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-label-group mt-3 d-grid gap-2">
                <asp:Button ID="btnSignIn" runat="server" Text="Sign in" CssClass="btn btn-primary btn-block" OnClick="btnSignIn_Click" />
            </div>
            <div class="text-center">
                <a class="d-block small mt-3" href="SignUp.aspx">Register an account</a>
            </div>
        </div>
    </div>
</asp:Content>