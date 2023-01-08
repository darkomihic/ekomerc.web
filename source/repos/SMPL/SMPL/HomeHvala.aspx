<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomeHvala.aspx.cs" Inherits="SMPL.HomeHvala" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
        <br />
        <div class="container">
            <div class="row">
                <h2 style="font-family:customRegular; margin:auto; text-align:center">Dobro došli na najveći sajt za preprodaju patika</h2>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <img src="slike%20za%20sajt/air-max-90-shoes-SlFTWq.png" />
                </div>
                <div class="col-md-4 d-none d-md-block">
                    <img src="slike%20za%20sajt/air-max-95-shoes-DCS600.png" />
                </div>
                <div class="col-md-4 d-none d-md-block">
                    <img src="slike%20za%20sajt/air-max-97-se-mens-shoes-3l919x.png" />
                </div>
            </div>
            <hr />
            <p>
                SMPL je online tržište za kupovinu i prodaju raznih modela novih i polovnih patika. Kreiranje naloga je besplatno i možete ga kreirati <a href="NapraviNalog.aspx">ovde</a>. Za više informacija o bezbednosti i tarifama prodaje kliknite <a href="TermsAndConditions.aspx">ovde</a>.
            </p>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h3>Log in</h3>
                    <label>Username</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Username" ></asp:TextBox>
                    </div>
                    <label>Password</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password"></asp:TextBox>
                    </div>
                    <div class="form-group" style="padding:2%">
                        <asp:Button CssClass="btn btn-outline-dark btn-block btn-lg" ID="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click" />
                        <asp:Button CssClass="btn btn-dark btn-block btn-lg" ID="btnCreate" runat="server" Text="Kreiraj nalog" OnClick="btnCreate_Click"  />
                    </div>
                </div>
                <div class="col-md-6" style="border:dashed">

                </div>
            </div>
            <br />
        </div>
    </section>
    
</asp:Content>
