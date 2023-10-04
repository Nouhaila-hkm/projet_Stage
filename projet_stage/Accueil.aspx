<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="projet_stage.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Accueil
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none}
.w3-left, .w3-right, .w3-badge {cursor:pointer}
.w3-badge {height:13px;width:13px;padding:0}
p{
    padding:20px;
    color:dimgrey;
}
fieldset{
    padding: 1em 1.75em;
    border-radius:15px;
    font-family:inherit;
    transform:scale(1);
    transition:all 300ms;
    border:none;
    background-color:#fff6e9;
    margin: 0 auto;
    width:99%;
}
fieldset:hover{
    background:white;
    border:2px solid #ff0000;
    color:#ff0000;
    cursor:pointer;
    transform:scale(0.9);
}
field{
    text-align:center;
}
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
       <!-- Start Banner Hero -->
    <div class="banner-wrapper bg-light">
        <div id="index_banner" class="banner-vertical-center-index container-fluid">

            <!-- Start slider -->
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
                    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
                    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">

                        <img src="assets/img/slide1.jpg" />

                    </div>
                    <div class="carousel-item">

                        <img src="assets/img/slide4.jpg" />

                    </div>
                    <div class="carousel-item">

                       <img src="assets/img/slide2.jpg" />

                    </div>
                </div>
                <a class="carousel-control-prev text-decoration-none" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
                    <i class='bx bx-chevron-left'></i>
                    <span class="visually-hidden">Previous</span>
                </a>
                <a class="carousel-control-next text-decoration-none" href="#carouselExampleIndicators" role="button" data-bs-slide="next">
                    <i class='bx bx-chevron-right'></i>
                    <span class="visually-hidden">Next</span>
                </a>
            </div>
            <!-- End slider -->

        </div>
    </div>
    <br />
    <fieldset >
        <h2>Qui sommes nous?</h2>
        <p>XPI a été fondée en 2008, spécialisée dans le développement, l'intégration et la maintenance de système de paiement électronique.
            <br /> Elle devient une grande entreprise pour responsabiliser les grandes institutions financières à travers le monde,<br />
            grâce à sa solution révolutionnaire Card24 (basée sur les dernières technologies), qui a été conçue pour répondre aux besoins<br />
            des entités financières et couvrir les substances de paiement électronique. Les innovations XPI permettent à ses clients d'offrir <br />
            des services électroniques fiables et adaptés à des milliards de personnes.</p>
    </fieldset>
    <br />
    <fieldset>
        <h2>Notre mission !!</h2>
        <p>L'objectif et la stratégie d'Expanded Payment International (XPI) sont de permettre aux institutions financières de proposer des solutions<br />
            de paiement rapides et haut de gamme en fonction de leurs besoins.<br />
            XPI vise à innover de plus en plus et à changer l'approche traditionnelle des technologies de paiement.<br />
            Nos logiciels en ligne et de bureau de banque ont été approuvés dans de nombreuses banques et institutions de microfinance aujourd'hui.<br />

           <span class="field"> Avec Expanded Payment International et Card24 ™, vous réalisez un investissement à long terme.</span></p>
    </fieldset>
    <br />
</asp:Content>
