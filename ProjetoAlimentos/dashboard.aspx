<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="ProjetoAlimentos.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
    <div class="container" style="text-align:center">
     <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
       
        
        <div class="row" style="margin-top:30px">
          <div class="col">
              <asp:ImageButton ID="btnProdutos" runat="server" ImageUrl="~/img/product_add.png" OnClick="btnProdutos_Click" />
              <br />
              Reagentes</div>
          <div class="col">
             <asp:ImageButton ID="btnItens" runat="server" ImageUrl="~/img/vidraria-icon.png" OnClick="btnItens_Click" Height="128px" Width="128px" />
              <br />
              Frascos</div>
          <div class="col">
               <asp:ImageButton ID="btnConsumo" runat="server" ImageUrl="~/img/bottle.png" OnClick="btnConsumo_Click" />
               <br />
               Consumo</div>
          <div class="col">
              <asp:ImageButton ID="btnListaItens" runat="server" ImageUrl="~/img/list.png" OnClick="btnListaItens_Click" />
              &nbsp;&nbsp;&nbsp;&nbsp;
               <br />
              Listagem
            </div>
            <div class="col">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/avatarAdm.png" Height="128px" Width="128px" OnClick="ImageButton1_Click" />
                <br />
                Cadastro Administrador
            </div>
        </div>
   </div>

</asp:Content>
