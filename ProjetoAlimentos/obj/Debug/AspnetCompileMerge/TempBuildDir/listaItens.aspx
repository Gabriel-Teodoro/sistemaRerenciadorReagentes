<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListaItens.aspx.cs" Inherits="ProjetoAlimentos.ListaItens" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center" class="table-responsive">
        Reagente:
    <asp:Label ID="lblProd" runat="server" ForeColor="Red"></asp:Label>
        <br />
&nbsp;<asp:GridView ID="gvItens" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="descricao_itens" HeaderText="Descrição" />
                <asp:BoundField DataField="massa" HeaderText="Massa" />
                <asp:BoundField DataField="massa_restante" HeaderText="Massa Restante" SortExpression="massa_restante" />
                <asp:BoundField DataField="data" HeaderText="Data Cadastro" />
                <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                <asp:BoundField DataField="Densidade" HeaderText="Densidade" />
                <asp:BoundField DataField="MassaRestVol" HeaderText="Vol Restante" />
                <asp:BoundField DataField="MassaConsVol" HeaderText="Vol Consumido" />
            </Columns>
        </asp:GridView>
        <asp:ImageButton ID="btnVoltar" runat="server" ImageUrl="~/img/back.png" OnClick="btnVoltar_Click" />
        <br />
    </div>
</asp:Content>
