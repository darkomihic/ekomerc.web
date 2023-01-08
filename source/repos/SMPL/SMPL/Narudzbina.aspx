<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Narudzbina.aspx.cs" Inherits="SMPL.ViewProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
                                                            <div class="row">
                                                                <div class="col-lg-10">
                                                                    <div class="row">
                                                                        <div class="col-4">
                                                                            Model:
                                                                            <asp:Label ID="lblModel" runat="server" Text=""></asp:Label>
                                                                            
                                                                        </div>
                                                                        <div class="col-4">
                                                                            Brend:
                                                                            <asp:Label ID="lblBrend" runat="server" Text=""></asp:Label>
                                                                        </div>
                                                                        <div class="col-4">

                                                                            Veličina:

                                                                            <asp:Label ID="lblVelicina" runat="server" Text=""></asp:Label>

                                                                           

                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-4">

                                                                            Stanje:

                                                                            <asp:Label ID="lblStanje" runat="server" Text=""></asp:Label>

                                                                        </div>
                                                                        <div class="col-4">

                                                                            Verifikovano:

                                                                            <asp:Label ID="lblVerifikovano" runat="server" Text="Ne"></asp:Label>

                                                                        </div>
                                                                        <div class="col-4">

                                                                            Cena:

                                                                            <asp:Label ID="lblCena" runat="server" Text=""></asp:Label>


                                                                            rsd  +

                                                                            <asp:Label Text="0rsd, nema Verifikacije" runat="server" ID="lblVerifikacija" />



                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-2">
                                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" class="img-fluid justify-content-center" runat="server" ImageUrl="" />
                                                    </ItemTemplate>
                                                                </div>
                                                            </div>
          <div class="row">
                                                                <div class="col-lg-10">
                                                                    <div class="row">
                                                                        <div class="col-4">
                                                                            Username:
                                                                            <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
                                                                            
                                                                        </div>
                                                                        <div class="col-4">
                                                                            E-Mail:
                                                                            <asp:Label ID="lblEMail" runat="server" Text=""></asp:Label>
                                                                        </div>
                                                                        <div class="col-4">

                                                                            Trust Factor:

                                                                            <asp:Label ID="lblTrustFactor" runat="server" Text=""></asp:Label>
                                                                            <asp:Label ID=lblTF2 Text="" runat="server" />
                                                                           

                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-4">

                                                                            Info:

                                                                            <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>

                                                                        </div>
                                                                        <div class="col-4">

                                                                            Admin:

                                                                            <asp:Label ID="lblAdmin" runat="server" Text="Ne"></asp:Label>

                                                                        </div>
                                                                        <div class="col-4">

                                                                            <asp:Button ID="btnPoruci" Text="Poruči" runat="server" OnClick="btnPoruci_Click" />

                                                                            <asp:Button ID="btnObrisi" Text="Obrisi oglas" runat="server" OnClick="Unnamed1_Click" />
                                                                            <asp:Button ID="btnTF" Text="Obrisi oglas i smanji TF" runat="server" OnClick="Unnamed2_Click" />
                                                                            <asp:Button ID="btnBan" Text="Ban" runat="server" OnClick="Unnamed3_Click" />



                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-2">
                                                                    <ItemTemplate>
                                                        <asp:Image ID="Image2" class="img-fluid justify-content-center" runat="server" ImageUrl="" />
                                                    </ItemTemplate>
                                                                </div>
                                                            </div>
                                                        </div>
</asp:Content>
