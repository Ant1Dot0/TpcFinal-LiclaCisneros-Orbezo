<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ejemplovacio.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="imagenes/img1.jpg" class="d-block w-100" alt="..." width="620" height="450">
                        </div>
                        <div class="carousel-item">
                            <img src="imagenes/img2.jpg" class="d-block w-100" alt="..." width="620" height="450">
                        </div>
                        <div class="carousel-item">
                            <img src="imagenes/img3.jpg" class="d-block w-100" alt="..." width="620" height="450">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </button>
                </div>
            </div>            
        </div>
        <div class="row" style="display: flex; flex-direction: row; justify-content:space-between;">
            <%foreach (var arti in ListaArticulos)
                {%>
            <div class="card" style="width: 18rem;height:30rem;margin:20px;border:1px solid black;">
                <img src="<%=arti.Url%>" class="card-img-top" alt="No Disponible" width="100%" height="55%" style="background-color:lightgray;">
                <div class="card-body" style="border-top:1px solid black;display:flex;flex-direction:column;align-items:center;">
                    <h5 class="card-title"><%=arti.nombre %></h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="Detalle.aspx" class="btn btn-success">Ver más</a>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</asp:Content>
