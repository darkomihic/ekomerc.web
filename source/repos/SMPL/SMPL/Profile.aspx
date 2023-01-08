<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SMPL.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="card">
                    <div class="card-body">
                       
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Izmenite vaše podatke</h3>
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
                                <asp:Label Text="Banovani ste!" ID="lblBan" CssClass="align-self-center" style="color:#006600;font-size:26px;font-weight:bold" runat="server" />
                                <br />
                                <label>
                                    Username:
                                </label>
                                <asp:Label Text="" ID="lblUsername" runat="server" />
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tbxIzmeniUsername" placeholder="New Username"></asp:TextBox>
                                </div>
                                <br />
                                <asp:Button Text="Izmeni" ID="btnIzmeniUsername" runat="server" OnClick="btnIzmeniUsername_Click" />
                                <hr />
                                <label>
                                    Password
                                </label>
                                <asp:Label Text="" ID="lblPassword" runat="server" />
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tbxIzmeniPassword" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tbxPotvrdiIzmenjenPW" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <asp:Button Text="Izmeni" ID="btnIzmeniPassword" runat="server" OnClick="btnIzmeniPassword_Click" />
                                <hr />
                                <br />
                                <label>Vaš info je:</label>
                                <asp:Label Text="" ID="lblInfo" runat="server" />
                                <asp:TextBox runat="server" ID="tbxInfo" Text="" />
                                <br />
                                <br />
                                <asp:Button Text="Izmeni" ID="btnIzmeniInfo" runat="server" OnClick="btnIzmeniInfo_Click" />
                                <br />
                                <hr />
                                <label>
                                    Trust Factor:
                                </label>
                                <asp:Label Text="" ID="lblTF" runat="server" />
                                <br />
                                <asp:Label Text="Ovaj korisnik je admin" ID="lblAdmin" runat="server" />
                                <br />
                                
                               
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMPLConnectionString %>" SelectCommand="SELECT * FROM [tblOglas] WHERE ([ProfilID] = @ProfilID)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="ID" Name="ProfilID" SessionField="ID" Type="Int32" />
                    </SelectParameters>

                </asp:SqlDataSource>
                                    <div class="col-md-8 mx-auto justify-content-center m-1">
                                            <div class="card">
                                                <div class="row justify-content-center">   
                                                    <h1 style="align-self:center">Vaši oglasi</h1>
                                                    <h6 style="align-self:center">Pritisnite select da bi obrisali</h6>
                                                    <br />
                                                </div>
                                        
                                        <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server"  AutoGenerateColumns="False"  DataKeyNames="OglasID" emptydatatext="Nemate oglasa." 
        autogenerateselectbutton="True"  
         DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                                            <Columns>
                                                

                                                
                                                <asp:TemplateField>

                                                    <ItemTemplate>
                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-lg-10">
                                                                    <div class="row">
                                                                        <div class="col-4">
                                                                            Model:
                                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Model") %>'></asp:Label>
                                                                            
                                                                        </div>
                                                                        <div class="col-4">
                                                                            Brend:
                                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Brand") %>'></asp:Label>
                                                                        </div>
                                                                        <div class="col-4">

                                                                            Veličina:

                                                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Size") %>'></asp:Label>

                                                                            

                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-4">

                                                                            Stanje:

                                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Condition") %>'></asp:Label>

                                                                        </div>
                                                                        <div class="col-4">

                                                                            Verifikovano:

                                                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Verified") %>'></asp:Label>

                                                                        </div>
                                                                        <div class="col-4">

                                                                            Cena:

                                                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>'></asp:Label>


                                                                            rsd

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-2">
                                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" class="img-fluid justify-content-center" runat="server" ImageUrl='<%# Eval("Image") %>' />
                                                    </ItemTemplate>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>

                                                </asp:TemplateField>
                                                <asp:BoundField DataField="OglasID" HeaderText="ID" SortExpression="OglasID" />
                                                <asp:BoundField DataField="ProfilID" HeaderText="ProfilID" SortExpression="ProfilID" />
                                            </Columns>
                                        </asp:GridView>
                                        
                                    </div>
            
            </div>
        </div>
    </div>
</asp:Content>
