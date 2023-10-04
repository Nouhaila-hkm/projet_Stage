<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contacter-nous.aspx.cs" Inherits="projet_stage.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Contacter-Nous!!
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
       
        .info{
            align-self:center;
            width:30vw;
            margin:0 auto;
            padding-left:3em;
        }
       .contacter-nous{
           display:flex;
           flex-flow:row wrap;
           justify-content:space-around;
           background-color:#e8e6e6;
           font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
           padding:1.25em;
       }
       #loc{
           
       }
       
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

       <section class="bg-light">

            <div class=" align-items-center justify-content-between">
                       <iframe id="" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1661.8464690423866!2d-7.633532000000001!3d33.587321!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x492e1d7c77bce2b4!2sXPI!5e0!3m2!1sfr!2sus!4v1619626566135!5m2!1sfr!2sus"  style="border:0;height:400px;width:100%" allowfullscreen="" loading="lazy"></iframe>

            </div>
    </section>
    <!-- End Banner Hero -->


    <!-- Start Contact -->
    <section class="container py-5">

        <div class="row pb-4">
            <div class="col-lg-4">

                <div class="contact row mb-4">
                    <div class="contact-icon col-lg-3 col-3">
                        <div class="py-3 mb-2 text-center border rounded text-secondary">
                            <i class='display-6 bx bx-news'></i>
                        </div>
                    </div>
                    <ul class="contact-info list-unstyled col-lg-9 col-9  light-300">
                        <li class="h5 mb-0">Adresse:</li>
                        <li class="text-muted">199, Avenue Zerktouni , Angle rue Chella,</li>
                        <li class="text-muted">Bureau N° 03 et 04,
2eme étage - Casablanca</li>
                    </ul>
                </div>

                <div class="contact row mb-4">
                    <div class="contact-icon col-lg-3 col-3">
                        <div class="border py-3 mb-2 text-center border rounded text-secondary">
                            <i class='display-6 bx bx-news' ></i>
                        </div>
                    </div>
                    <ul class="contact-info list-unstyled col-lg-9 col-9 light-300">
                        <li class="h5 mb-0">Téléphone:</li>
                        <li class="text-muted"></li>
                        <li class="text-muted">+212 601 68 02 08</li>
                    </ul>
                </div>

                <div class="contact row mb-4">
                    <div class="contact-icon col-lg-3 col-3">
                        <div class="border py-3 mb-2 text-center border rounded text-secondary">
                            <i class='display-6 bx bx-news'></i>
                        </div>
                    </div>
                    <ul class="contact-info list-unstyled col-lg-9 col-9 light-300">
                        <li class="h5 mb-0">E-mail:</li>
                        <li class="text-muted"></li>
                        <li class="text-muted">sales@xpi.ma</li>
                    </ul>
                </div>

            </div>


            <!-- Start Contact Form -->
            <div class="col-lg-8 ">
                <form class="contact-form row" method="post" action="#" role="form">

                    <div class="col-lg-6 mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingname" name="inputname" placeholder="Nom">
                            <label for="floatingname light-300">Nom</label>
                        </div>
                    </div><!-- End Input Name -->

                    <div class="col-lg-6 mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingemail" name="inputemail" placeholder="Email">
                            <label for="floatingemail light-300">Email</label>
                        </div>
                    </div><!-- End Input Email -->

                    <div class="col-lg-6 mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingphone" name="inputphone" placeholder="Téléphone">
                            <label for="floatingphone light-300">Téléphone</label>
                        </div>
                    </div><!-- End Input Phone -->

                    <div class="col-lg-6 mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingcompany" name="inputcompany" placeholder="Nom d'entreprise">
                            <label for="floatingcompany light-300">Nom d'entreprise</label>
                        </div>
                    </div><!-- End Input Company Name -->

                    <div class="col-12">
                        <div class="form-floating mb-4">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingsubject" name="inputsubject" placeholder="Objet">
                            <label for="floatingsubject light-300">Objet</label>
                        </div>
                    </div><!-- End Input Subject -->

                    <div class="col-12">
                        <div class="form-floating mb-3">
                            <textarea class="form-control light-300" rows="8" placeholder="Message" id="floatingtextarea"></textarea>
                            <label for="floatingtextarea light-300">Message</label>
                        </div>
                    </div><!-- End Textarea Message -->

                    <div class="col-md-12 col-12 m-auto text-end">
                        <button type="submit" class="btn btn-secondary rounded-pill px-md-5 px-4 py-2 radius-0 text-light light-300">Envoyer le message</button>
                    </div>

                </form>
            </div>
            <!-- End Contact Form -->


        </div>
    </section>
</asp:Content>
