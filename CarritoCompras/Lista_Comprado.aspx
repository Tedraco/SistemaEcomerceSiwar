<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista_Comprado.aspx.cs" Inherits="CarritoCompras.Lista_Comprado" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">

              <div class="row">
            <div class="col">
                <div class="table-responsive">

                    <table class="table" style="color: cadetblue">
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <h1>Carrito de compras</h1>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 77px">&nbsp;</td>
                            <td colspan="2">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="505px"
                                    OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting"
                                    OnRowDeleted="GridView1_RowDeleted" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table-responsive">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" HeaderText="Editar" />
                                        <asp:BoundField DataField="codproducto" HeaderText="Codigo" />
                                        <asp:BoundField DataField="desproducto" HeaderText="Descripcion" />
                                        <asp:BoundField DataField="preproducto" HeaderText="Precio" />
                                        <asp:TemplateField HeaderText="Cantidad">
                                            <ItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="73px">1</asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="subtotal" HeaderText="Sub Total" />
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 77px">&nbsp;</td>
                            <td style="width: 397px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 77px">&nbsp;</td>
                            <td style="width: 397px; text-align: right">SubTotal S/ :&nbsp;
                <asp:Label ID="lblSubTotal" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 77px">&nbsp;</td>
                            <td style="width: 397px; text-align: right">IGV S/ :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblIGV" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 77px">&nbsp;</td>
                            <td style="width: 397px; text-align: right">Total S/ :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 77px">&nbsp;</td>
                            <td style="width: 397px">
                                <asp:Button ID="Button1" runat="server" Text="Actualizar" OnClick="Button1_Click"  CssClass="btn btn-info" />
                                <asp:Button ID="Button2" runat="server" Text="Continuar Compras" Style="margin-left: 111px"
                                    Width="157px" OnClick="Button2_Click" CssClass="btn btn-info" />
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" Style="margin-left: 34px" Text="Comprar" Width="120px"
                                    OnClick="Button3_Click" CssClass="btn btn-info" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
           </div>
  

        <div class="row">
            <div class="col">
                <table class="table-responsive">
     
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px">
                <asp:TextBox ID="txtCodigo" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                <strong>Fecha:</strong></td>
            <td style="width: 397px">
                <asp:Label ID="lblFecha" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                Cliente:</td>
            <td style="width: 397px; margin-bottom:4px;margin-top:4px">
                <asp:TextBox ID="txtCliente" runat="server" Width="332px" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px; margin-bottom:4px;margin-top:4px"">
                Email:</td>
            <td style="width: 397px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="329px" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
            </div>
        </div>

  
        <div class="container">
            <div class="row" style="margin-bottom: 10px">
                <div class="col-md-12">
                    <h3>MÉTODO DE PAGO</h3>
                    <form action="">
                        <div class="form-group">
                            <div class="col-12 col-sm-4">
                                <label for="mpago">Seleccione Método de Pago</label>                                
                                
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Value="1">Visa</asp:ListItem>
                                    <asp:ListItem Value="2">Paypal</asp:ListItem>
                                    <asp:ListItem Value="3">PagoEfectivo</asp:ListItem>
                                    <asp:ListItem Value="4">MasterCard</asp:ListItem>
                                    <asp:ListItem Value="5">BBVA Continental</asp:ListItem>
                                </asp:DropDownList>
                               
                                <label for="nrotarjeta">Número de Tarjeta</label>
                                <asp:TextBox ID="txtnrotarjeta" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                            
                                <label for="fcadu">Fecha de Caducidad</label>
                               <asp:TextBox ID="txtfcadu" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                          
                                <label for="codsegu">Código de Seguridad</label>
                                <asp:TextBox ID="txtcodsegu" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                            </div>
                            <h3>INFORMACIÓN DE FACTURACIÓN</h3>
                            <div class="col-12 col-sm-4" style="margin-top: 4px">
                                <label for="codcliente">Código del Cliente</label>
                                <asp:TextBox ID="txtcodcliente" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                            
                                <label for="nombre">Nombre</label>
                                <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                                 <label for="apellidos">Apellidos</label>
                                <asp:TextBox ID="txtapellido" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                          
                                <label for="domicilio">Domicilio</label>
                                <asp:TextBox ID="txtdomicilio" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>

                                <label for="pais">Pais</label>
                                <asp:TextBox ID="txtpais" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                                 
                         
                            </div>
                            <div class="col-12 col-sm-4" style="margin-top: 4px">                               
                                <label for="ciudad">Ciudad</label>
                                <asp:TextBox ID="txtCiudad" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>                         
                         
                                <label for="codpostal">Código Postal</label>
                                <asp:TextBox ID="txtcodpostal" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                          
                                <label for="correo">Correo Electronico</label>
                                <asp:TextBox ID="txtcorreo" runat="server" CssClass="form-control" Enabled="true" TextMode="Email"></asp:TextBox>
                           
                                <label for="teléfono">Número de Teléfono</label>
                                <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                            </div>

                            <div class="col col-xs-2 col-sm-4" style="margin-top: 4px">
                                <asp:Button ID="btnGuardar" runat="server" Text="Continuar Pago" class="btn btn-info"  />
                            </div>
                              <div class="col col-xs-2 col-sm-4" style="margin-top: 4px">
                               <br />
                               <br />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        

</asp:Content>