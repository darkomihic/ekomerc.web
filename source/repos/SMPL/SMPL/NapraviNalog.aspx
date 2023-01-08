<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NapraviNalog.aspx.cs" Inherits="ProjekatDarkoMihicIT692020.NapraviNalog" %>
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
                                    <h2 style="font-family:customRegular">Welcome</h2>
                                    <img width="300" height="150" src="slike%20za%20sajt/778745.jpg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 style="font-family:customRegular">Kreiraj nalog</h3>
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
                                    Unesite username
                                </label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tbxNewUsername" placeholder="Username"></asp:TextBox>
                                </div>
                                <br />
                                <label>
                                    Unesite e-mail
                                </label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tbxNewEMail" placeholder="E-Mail"></asp:TextBox>
                                </div>
                                <br />
                                <label>
                                    Unesite šifru
                                </label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tbxNewPassword" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <label>
                                    Ponovite šifru
                                </label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tbxConfirmPassword" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group">
                                    <asp:CheckBox CssClass="LabelCheckBox" Text="  Pročitao sam Terms and conditions" runat="server" ID="cbTerms" />
                                </div>
                                <br />
                                <p>Možete ih pronaći <a href="TermsAndConditions.aspx">ovde</a>.</p>
                                <br />
                                <div class="form-group text-center" >
                                    <asp:Button class="btn btn-outline-dark btn-block btn-lg" Text="Create account" runat="server" OnClick="Unnamed2_Click"> </asp:Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
