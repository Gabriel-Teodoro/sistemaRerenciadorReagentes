<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="listaprod.aspx.cs" Inherits="ProjetoAlimentos.listaprod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        LISTAGEM DE REAGENTES</h1>
   <div style="text-align:center" class="table-responsive">      

        <asp:GridView ID="gvdados" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" OnRowCancelingEdit="gvdados_RowCancelingEdit" OnRowEditing="gvdados_RowEditing" DataKeyNames="idprodutos" OnRowUpdating="gvdados_RowUpdating" OnSelectedIndexChanged="gvdados_SelectedIndexChanged" OnSelectedIndexChanging="gvdados_SelectedIndexChanging">
            <Columns>
                <asp:BoundField DataField="desc_prod" HeaderText="Reagente" />
                <asp:BoundField DataField="massa_restante" HeaderText="Massa Restante" />
            </Columns>
        </asp:GridView>
    <asp:ImageButton ID="btnVoltar" runat="server" ImageUrl="~/img/back.png" OnClick="btnVoltar_Click" />
        <br />
    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>
