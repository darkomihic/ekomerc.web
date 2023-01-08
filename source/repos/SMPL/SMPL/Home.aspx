<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjekatDarkoMihicIT692020.WebForm2" %>
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
                    <img class="img-fluid" src="slike%20za%20sajt/air-max-90-shoes-SlFTWq.png" />
                </div>
                <div class="col-md-4 d-none d-md-block">
                    <img class="img-fluid" src="slike%20za%20sajt/air-max-95-shoes-DCS600.png" />
                </div> 
                <div class="col-md-4 d-none d-md-block">
                    <img class="img-fluid" src="slike%20za%20sajt/air-max-97-se-mens-shoes-3l919x.png" />
                </div>
            </div>
            <hr />
            <p>
                SMPL je online tržište za kupovinu i prodaju raznih modela novih i polovnih patika. Kreiranje naloga je besplatno i možete ga kreirati <a href="NapraviNalog.aspx" style="color:crimson; text-decoration:none;  ">ovde</a>. Za više informacija o bezbednosti i tarifama prodaje kliknite <a href="TermsAndConditions.aspx" style="color:crimson; text-decoration:none;" >ovde</a>.
            </p>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div id="divLogin" class="col-md-6" runat="server">
                    <h3>Log in</h3>
                    <label>Username</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Username" ></asp:TextBox>
                    </div>
                    <label>Password</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                    </div>
                    <div class="form-group" style="padding:2%">
                        <asp:Button CssClass="btn btn-outline-dark btn-block btn-lg" ID="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click" />
                        <asp:Button CssClass="btn btn-dark btn-block btn-lg" ID="btnCreate" runat="server" Text="Kreiraj nalog" OnClick="btnCreate_Click"  />
                    </div>
                </div>
                <div id="divCarousel" runat="server" class="col-md-6">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                      <div class="carousel-inner">
                        <div class="carousel-item">
                          <img src="slike%20za%20sajt/oz.jpg" width="400" height="300" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item active">
                          <img src="slike%20za%20sajt/sws.jpg" width="400" height="300" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                          <img src="slike%20za%20sajt/aj1.jpg" width="400" height="300"  class="d-block w-100" alt="...">
                            
                        </div>
                      </div>
                      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                      </button>
                      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
  </button>
                    </div>
                </div>
                <div class="col-md-6 justify-content-center" style="outline-color:red">
                    <p style="font-size:large">U slučaju primedbe na prodavce pošaljite žalbu na admin@smpl.com da bi Admin proverio i samim tim banovao ili smanjio Trust Factor prodavcu. Takođe ako želite da se vaš oglas obriše ili nečiji obratite se Adminu.</p>
                </div>
            </div>
            <br />
        </div>
    </section>
    
</asp:Content>
