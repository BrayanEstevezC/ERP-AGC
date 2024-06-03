<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Master/plantilla.Master" AutoEventWireup="true" CodeBehind="ReporteVenta.aspx.cs" Inherits="ERP.Vistas.Ventas.ReporteVenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="RFinanciero text-center text-light justify-content-center align-content-center container-fluid">



         <section class="row p-2 text-start">
            <article class="col-3 col-lg-5 text-start">
                <asp:ImageButton ID="imgbtnAtrasVenta" runat="server" ImageUrl="~/Media/Resources/arrow-left-solid.svg" CssClass="atras rounded-circle p-2" OnClick="imgbtnAtrasVenta_Click" />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Atrás" Font-Bold="True">
                </asp:Label>
            </article>
            <article class="col-9 col-lg-7 text-start">
                <h1 class="pt-2 mb-2">REPORTE DE COMPRA-VENTA</h1>
            </article>
        </section>

        <article class="row p-2"style="width:90%; margin:auto;">

            <asp:GridView ID="GvDatosCotizacion" runat="server" AutoGenerateColumns="false" Style="width: 100%; margin-bottom: .5rem">
                <Columns>
                    <asp:BoundField DataField="Partida"            HeaderText="Partida" />
                    <asp:BoundField DataField="Unidades"           HeaderText="Unidades" />
                    <asp:BoundField DataField="CostoFormato"       HeaderText="Costo" />
                    <asp:BoundField DataField="TotalPartidaCostoFormato"  HeaderText="Gasto Total" />
                    <asp:BoundField DataField="precioFormato"      HeaderText="Precio" />
                    <asp:BoundField DataField="TotalPartidaVentaFormato"  HeaderText="Venta Total" />
                </Columns>
            </asp:GridView>


        </article>

        <article class="row p-2 mt-3" style="width:90%; margin:auto;" >

            <div class="col-12 col-lg-6">

                <div class="tabla">
                     <asp:GridView ID="GvGastosExtra" runat="server" AutoGenerateColumns="false" Style="width: 100%; margin-bottom: .5rem" >
                    <Columns>
                        <asp:BoundField DataField="Partida"            HeaderText="Partida" />
                        <asp:BoundField DataField="CriterioAumento" HeaderText="Nombre" />
                        <asp:BoundField DataField="baseFormato" HeaderText="Precio Base" />
                        <asp:BoundField DataField="Porcentaje" HeaderText="PA" />
                        <asp:BoundField DataField="MontoAumento" HeaderText="Monto Agregado" />
                        <asp:BoundField DataField="precioFormato" HeaderText="Precio Final" />
                    </Columns>

                </asp:GridView>
                </div>

            </div>
            <div class="col-12 col-lg-3 mt-3">
                 <article class="iva">
                <%-- Encabezado --%>
                <div class="d-flex Orange text-dark p-2 rounded" style="border-bottom: solid 2px #212529;">
                    <div class="col text-end">
                        <asp:Label ID="lblSubtotalGastos" runat="server" Text="Subtotal : $" Font-Bold="True"></asp:Label>
                    </div>

                    <div class="col text-end">
                        <asp:Label ID="lblSubGastos" runat="server" Text="0.00"></asp:Label>
                    </div>

                </div>

                <%-- Cuerpo --%>
                <div class="d-flex White p-2 text-dark">

                    <div class="col mt-2 text-end">
                        <asp:Label ID="lblIVA" runat="server" Text="IVA : $" Font-Bold="True"></asp:Label>
                    </div>

                    <div class="col mt-2 text-end">
                        <asp:Label ID="lblValorIVA" runat="server" Text="0.00"></asp:Label>
                    </div>

                </div>

                <div class="d-flex p-2 text-white Green rounded" style="border-top: solid 2px #212529;">

                    <div class="col text-end">
                        <asp:Label ID="Gastos" runat="server" Text="Gastos : $" Font-Bold="True"></asp:Label>
                    </div>
                    <div class="col text-end">
                        <asp:Label ID="TotalGastos" runat="server" Text="0.00"></asp:Label>

                    </div>
                </div>
            </article>
            </div>
            
            <div class="col-12 col-lg-3 mt-3 texto">
                 <article class="iva">
                <%-- Encabezado --%>
                <div class="d-flex Orange text-dark p-2 rounded" style="border-bottom: solid 2px #212529;">
                    <div class="col text-end">
                        <asp:Label ID="lblSubtotalTitle" runat="server" Text="SubTotal : $" Font-Bold="True"></asp:Label>
                    </div>

                    <div class="col text-end">
                        <asp:Label ID="lblSubtotal" runat="server" Text="0.00"></asp:Label>
                    </div>

                </div>

                <%-- Cuerpo --%>
                <div class="d-flex White p-2 text-dark">

                    <div class="col mt-2 text-end">
                        <asp:Label ID="lblIVATitle" runat="server" Text="IVA : $" Font-Bold="True"></asp:Label>
                    </div>

                    <div class="col mt-2 text-end">
                        <asp:Label ID="lblIVA2" runat="server" Text="0.00"></asp:Label>
                    </div>

                </div>

                <div class="d-flex p-2 text-white Green rounded" style="border-top: solid 2px #212529;">

                    <div class="col text-end">
                        <asp:Label ID="lblTotalTitle" runat="server" Text="Ventas Totales : $" Font-Bold="True"></asp:Label>
                    </div>
                    <div class="col text-end">
                        <asp:Label ID="lblTotal" runat="server" Text="0.00"></asp:Label>

                    </div>
                </div>
            </article>
            </div>

           
        </article>

        <article class="mt-2">

            <asp:ImageButton ID="ImgDescargarPDF" ImageUrl="~/Media/Resources/download.png" CssClass="confirmar rounded-circle p-2" runat="server" OnClick="ImgDescargarPDF_Click"/><br />
            <asp:Label ID="Label1" runat="server" Text="Descargar Reporte"></asp:Label>


        </article>



    </section>

</asp:Content>
