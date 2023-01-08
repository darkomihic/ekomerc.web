<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NapraviOglas.aspx.cs" Inherits="ProjekatDarkoMihicIT692020.NapraviOglas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Unesite podatke o oglasu</h3>
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            
                            <div class="col-md-3">
                                <label>
                                    Brend
                                </label>
                                <div class="form-group">
                                    <asp:DropDownList runat="server" CssClass="form-control" ID="DDLBrend" placeholder="Izaberite">
                                        <asp:ListItem Value="Nike">Nike</asp:ListItem>
                                        <asp:ListItem Value="Adidas">Adidas</asp:ListItem>
                                        <asp:ListItem Value="Jordan">Jordan</asp:ListItem>
                                        <asp:ListItem Value="Puma">Puma</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                
                                <label>
                                    Model
                                </label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tbxModel" placeholder="Model"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Cena
                                </label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tbxCena" placeholder="Cena"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                     <label>
                                    Veličina
                     </label>
                                <div class="form-group">
                                    <asp:DropDownList runat="server" CssClass="form-control" ID="ddlSize" placeholder="Izaberite">
                                        <asp:ListItem Value="36">36</asp:ListItem>
                                        <asp:ListItem Value="37">37</asp:ListItem>
                                        <asp:ListItem Value="38">38</asp:ListItem>
                                        <asp:ListItem Value="39">39</asp:ListItem>
                                        <asp:ListItem Value="40">40</asp:ListItem>              
                                        <asp:ListItem Value="41">41</asp:ListItem>
                                        <asp:ListItem Value="42">42</asp:ListItem>
                                        <asp:ListItem Value="43">43</asp:ListItem>
                                        <asp:ListItem Value="44">44</asp:ListItem>
                                        <asp:ListItem Value="45">45</asp:ListItem>
                                        <asp:ListItem Value="46">46</asp:ListItem>              
                                        <asp:ListItem Value="47">47</asp:ListItem>



                                    </asp:DropDownList>
                                
                                </div>
                 </div>
                        </div>
                                
                    <hr />
            
       
             <div class="row">
                 <div class="col-md-4">
                     <label>
                                    Stanje
                     </label>
                                <div class="form-group">
                                    <asp:DropDownList runat="server" CssClass="form-control" ID="DDLStanje" placeholder="Izaberite">
                                        <asp:ListItem Value="5">5/10</asp:ListItem>
                                        <asp:ListItem Value="6">6/10</asp:ListItem>
                                        <asp:ListItem Value="7">7/10</asp:ListItem>
                                        <asp:ListItem Value="8">8/10</asp:ListItem>
                                        <asp:ListItem Value="9">9/10</asp:ListItem>              
                                        <asp:ListItem Value="10">10/10</asp:ListItem>

                                    </asp:DropDownList>
                                
                                </div>
                 </div>
                 <div class="col-md-4">
                     <label>
                         Verifikovano slanje
                     </label>
                     <div class="form-group">
                         <asp:CheckBox CssClass="LabelCheckBox" Text="  Želim verifikovano slanje" runat="server" ID="cbVerifikovano"/>
                     </div>
                 </div>
                 <div class="col-md-4 justify-content-center">

                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    
                 </div>
                  </div>
                    <div class="row">
                        <div class="form-group text-center" >
                                    <asp:Button class="btn btn-outline-dark btn-block btn-lg" Text="Objavi" runat="server" ID="btnObjavi" OnClick="btnObjavi_Click"> </asp:Button>
                                </div>
                    </div>
             </div>
            </div>
            </div>
                
             </div>
    </div>
</asp:Content>
