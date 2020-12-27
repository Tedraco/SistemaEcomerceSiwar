<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="CarritoCompras.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Inicio de Sesion:</h2>
    
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" Font-Names="Arial Narrow" LoginButtonText="Iniciar Sesion">
        <CheckBoxStyle Font-Names="Arial Narrow" />
        <LoginButtonStyle BackColor="#009999" BorderColor="White" Font-Names="Arial Narrow" />
        <TitleTextStyle Font-Names="Arial Narrow" />
</asp:Login>
    
       
</asp:Content>
