<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CarritoCompras.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">


        <div class="row" style="margin-top: 3px">
            <div class="col">
                <form action="">

                    <div class="form-group">
                        <div class="col col-md-12">
                            <label for="nombre">Codigo de Usuario</label>
                            <asp:TextBox ID="txtCodUsuario" placeholder="Ingrese su codigo de usuario" runat ="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col col-md-12">
                            <label for="nombre">Nombre</label>
                            <asp:TextBox ID="txtDescripcion" placeholder="Ingrese su nombre" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col col-md-12">
                            <label for="nombre">Rol</label>
                            <asp:TextBox ID="txtrol" placeholder="Ingrese su rol en la empresa" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col col-md-12">
                            <label for="nombre">Correo</label>
                            <asp:TextBox ID="txtcorreo" placeholder="Ingrese su correo electronico " runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="col col-md-12">
                            <label for="nombre">Telefono</label>
                            <asp:TextBox ID="txttelf" placeholder="Ingrese su numero de telefono " runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col col-md-12">
                            <label for="nombre">Documento de Identidad</label>
                            <asp:TextBox ID="txtdni" placeholder="Ingrese su DNI, RUC o Hoja de vida" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col col-md-12">
                            <label for="nombre">Contraseña</label>
                            <asp:TextBox ID="txtpass" runat="server"  placeholder="Ingrese su contraseña" CssClass="form-control"  textmode="Password"></asp:TextBox>
                        </div>
                        <div class="col col-md-12" style="margin-right: 4px; padding-right: 2em">
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Nuevo" class="btn btn-info" OnClick="Button1_Click"/>
                            <asp:Button ID="Button2" runat="server" Text="Guardar" class="btn btn-info" OnClick="btnGuardar_Click"/>
                            <asp:Button ID="Button3" runat="server" Text="Actualizar" class="btn btn-info" />
                        </div>
                    </div>
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col">
                <div class="table-responsive">                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BDVENTAS_5ConnectionString %>" SelectCommand="pa_usuario_ListarTodos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
