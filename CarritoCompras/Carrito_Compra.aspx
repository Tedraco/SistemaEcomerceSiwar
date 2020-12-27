<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito_Compra.aspx.cs" Inherits="CarritoCompras.Carrito_Compra" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color:lightblue">
        <h1>NUESTROS PRODUCTOS</h1>
        <div>
            <div id="contenedor">
                <div id="myCarousel" class="carousel slide">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                        <li data-target="#myCarousel" data-slide-to="4"></li>
                    </ol>
                    <!-- Carousel items -->
                    <div class="carousel-inner">
                        <div class="active item">
                            <img  src="imagenes/gal1.jpg" alt="banner1" />
                        </div>
                        <div class="item">
                            <img src="imagenes/gal2.jpg" alt="banner2" />
                        </div>
                        <div class="item">
                            <img src="imagenes/gal3.jpg" alt="banner3" />
                        </div>
                        <div class="item">
                            <img src="imagenes/gal4.jpg" alt="banner4" />
                        </div>
                        <div class="item">
                            <img src="imagenes/gal5.jpg" alt="banner5" />
                        </div>
                    </div>
                    <!-- Carousel nav -->
                    <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                    <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
                </div>
            </div>

            <script src="js/jquery.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script>
                $(document).ready(function () {
                    $('.myCarousel').carousel()
                });
            </script>

        </div>
    </div>


    <style>
        ul.lista1 li {
            display: inline;
            padding-right: 0.5em;
        }
    </style>
    <div class="container-fluid">
       <ul class="lista1">
           
             <li>
                 <asp:Button ID="btnGuantes" runat="server"  CommandName="Guantes" Text="Guantes"  CssClass="btn btn-info"/>
             </li>
             <li>
                 <asp:Button ID="btnRopa" runat="server"  CommandName="" Text="Ropa" CssClass="btn btn-info" />
             </li>
             <li>
                 <asp:Button ID="btnLentes" runat="server"  CommandName="" Text="Lentes" CssClass="btn btn-info" />
             </li>
             <li>
                 <asp:Button ID="btnMasc" runat="server"  CommandName="" Text="Mascarilla" CssClass="btn btn-info" />
             </li>
             <li>
                 <asp:Button ID="btnFacial" runat="server"  CommandName="" Text="Facial" CssClass="btn btn-info" />
             </li>
         </ul>
        <table class="table-responsive">
				<tbody>   
        <tr>
						<td>							

						    <asp:DataList ID="DataList2" runat="server" DataKeyField="codproducto" DataSourceID="SqlDataSource2" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" CssClass="table table-responsive">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" width="140" height="120" runat="server" ImageUrl='<%# "~/Imagenes/"+Eval("imagen") %>' CssClass="img-fluid" />
                                    <br />
                                    <br />
                                    Código :
                                    <asp:Label ID="codproductoLabel" runat="server" Text='<%# Eval("codproducto") %>' />
                                    <br />
                                    Producto :
                                    <asp:Label ID="desproductoLabel" runat="server" Text='<%# Eval("desproducto") %>' />
                                    <br />
                                    Categoria :
                                    <asp:Label ID="codcategoriaLabel" runat="server" Text='<%# Eval("codcategoria") %>' />
                                    <br />
                                    Precio :
                                    <asp:Label ID="preproductoLabel" runat="server" Text='<%# Eval("preproducto") %>' />
                                    <br />
                                    Cantidad :
                                    <asp:Label ID="canproductoLabel" runat="server" Text='<%# Eval("canproducto") %>' />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CommandName="Seleccionar" OnClick="Button1_Click" Text="Agregar al Carrito" CssClass="btn btn-info" />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>

						    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BDVENTAS_5ConnectionString %>" SelectCommand="execute [dbo].[PA_Productos_Bucar_Por_Categorias] 1" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>

						</td>
                        						
					</tr>
                    </tbody>  
            </table>

     </div>

  
				<table class="table-responsive">
				<tbody>     
                    <tr>
                        <td>
                            <h3>Lista de Productos</h3>                                                       
                            <asp:Label ID="lblAgregado" runat="server" Text="Label"></asp:Label>
                        </td>                       
                    </tr>               
					<tr>
						<td>							

						    <asp:DataList ID="DataList1" runat="server" DataKeyField="codproducto" DataSourceID="SqlDataSource1" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" CssClass="table table-responsive">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" width="140" height="120" runat="server" ImageUrl='<%# "~/Imagenes/"+Eval("imagen") %>' CssClass="img-fluid" />
                                    <br />
                                    <br />
                                    Código :
                                    <asp:Label ID="codproductoLabel" runat="server" Text='<%# Eval("codproducto") %>' />
                                    <br />
                                    Producto :
                                    <asp:Label ID="desproductoLabel" runat="server" Text='<%# Eval("desproducto") %>' />
                                    <br />
                                    Categoria :
                                    <asp:Label ID="codcategoriaLabel" runat="server" Text='<%# Eval("codcategoria") %>' />
                                    <br />
                                    Precio :
                                    <asp:Label ID="preproductoLabel" runat="server" Text='<%# Eval("preproducto") %>' />
                                    <br />
                                    Cantidad :
                                    <asp:Label ID="canproductoLabel" runat="server" Text='<%# Eval("canproducto") %>' />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CommandName="Seleccionar" OnClick="Button1_Click" Text="Agregar al Carrito" CssClass="btn btn-info" />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>

						    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDVENTAS_5ConnectionString %>" SelectCommand="SELECT * FROM [Productos]"></asp:SqlDataSource>

						</td>
                        						
					</tr>

					
				</tbody>
			</table>


    

</asp:Content>

