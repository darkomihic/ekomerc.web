<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="ProjekatDarkoMihicIT692020.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="300" height="150" src="slike%20za%20sajt/778745.jpg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>
                                    Username
                                </label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tbxAdminUsername" placeholder="Username"></asp:TextBox>
                                </div>
                                <br />
                                <label>
                                    Password
                                </label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tbxAdminPassword" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group text-center" >
                                    <asp:Button class="btn btn-outline-dark btn-block btn-lg" Text="Login" runat="server" OnClick="Unnamed1_Click"> </asp:Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
