<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adm.aspx.cs" Inherits="ProjetoAlimentos.adm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<h1 class="col-form-label-lg"> Cadastro de Administrador</h1>
    
<div class="form-group">
        Nome de Usuario:
        <asp:TextBox ID="TextNomeUsuario" CssClass="form-control" runat="server"></asp:TextBox>
 </div>
	
<div class="form-group">
        Senha:<br />
        &nbsp;<asp:TextBox ID="TextSenha" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
 </div>
	
<div class="form-group">
        Confirmar senha:<br />
        &nbsp;<asp:TextBox ID="TextConfSenha" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
 </div>
	
        <asp:Button ID="ButtonCadatroUsuario" CssClass="btn btn-primary" runat="server" Text="Cadastrar" Width="126px" OnClick="ButtonCadatroUsuario_Click" />
    <br />
    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
<br /> <br />
	<div class="row">
    <div class="col">
	<asp:ImageButton ID="btnVoltar" runat="server" ImageUrl="~/img/back.png" OnClick="btnVoltar_Click" />
		</div></div>
</asp:Content>
