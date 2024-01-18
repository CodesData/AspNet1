<%@ Page Title="SignUp" Language="C#" MasterPageFile="~/Account/Site2.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="AspNet1.Account.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <div class="card card-login mx-auto mt-5">
        <h5 class="card-header">Register an account</h5>
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
            <div class="form-group mt-2">
                <div class="form-label-group">
                    <asp:TextBox ID="txtEMail" runat="server" CssClass="form-control form-control-color" Width="100%"
                        placeholder="E-Mail">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEMail" runat="server" ControlToValidate="txtEMail" CssClass="text-danger"
                        ErrorMessage="E-Mail field is required" Font-Size="Small">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-label-group mt-3 d-grid gap-2">
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="btn btn-primary btn-block" OnClick="btnSignUp_Click" />
            </div>
            <div class="text-center">
                <a class="d-block small mt-3" href="SignIn.aspx">Sign in</a>
            </div>
        </div>
    </div>
</asp:Content>