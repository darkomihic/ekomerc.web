<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Market.aspx.cs" Inherits="ProjekatDarkoMihicIT692020.Market" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row">

                <div class="col-sm-12">
                    <center>
                        <h3>
                        SMPL MARKET</h3>
                    </center>
                    <div class="row">
                        <div class="col-md-12">
                            <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                            </asp:Panel>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-3" >
                        </div>
                        <div class="col-md-3" >
                        </div>
                        </div>
                    
                    <div class="row">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">   
                                    <asp:Label Text="" ID="lblStart" runat="server" />
                                </div>

                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMPLConnectionString %>" SelectCommand="SELECT * FROM [tblOglas]"></asp:SqlDataSource>
                                    <div class="col">
                                        
                                        <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False"  DataKeyNames="OglasID" emptydatatext="No data available." 
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
                    </div>
                </div>
                

            </div>
        </div>
</asp:Content>
