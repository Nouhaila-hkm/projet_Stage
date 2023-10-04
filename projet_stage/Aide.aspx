<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Aide.aspx.cs" Inherits="projet_stage.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Authentification
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
      <link href="assets/css/bootstrap.min_.css" rel="stylesheet">
    <style type="text/css">
       
         p{
            text-align:center;
            color:floralwhite;

        }
         
        body{
            background-image:url('image/df130d03dfec12132c32517437293ac6.jpg');
            background-repeat:no-repeat;
            background-attachment:fixed;
        }
        #label1{
            text-align: center;
            display: block;
            margin: 0 auto;
            position:relative;
            top:40%;
            left:30%;
        }
        h2{
            text-align:center;
        }
        legend{
            font-family: Constantia;
            font-size: larger;
            font-weight: bolder;
            font-style: oblique;
            font-variant: normal;
            text-transform: none;
            color: #CC0000;
            line-height: normal;
            background-color: #FFFFFF;
        }
        .auto-style5{
            background-position: center center;
            background: #eeeeee;
             width: 652px;
            margin-left: 101px;
            margin: 0 auto;
        }
        #Label3{
            font-style:italic;
        }
        #Label4{
            font-style:italic;
        }
       .auto-style13 {
            height: 26px;
            width: 115px;
        }
        .auto-style11 {
            width: 115px;
        }
        .auto-style8 {
            width: 160px;
        }
         #Button1 {
            text-decoration:none;
            padding:1em 1.75em;
            border: none;
            border-radius: 15px;
            font-family: inherit;
            color: white;
            background: #CC0000;
            transform: scale(1);
            transition: all 300ms;  
        }
        #Button1:hover {
            background: white;
            border: 2px solid #ff0000;
            color: #ff0000;
            cursor: pointer;
            transform: scale(0.9);
        }
        .auto-style9 {
            height: 26px;
            width: 140px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    
             
  
   
     <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1 style="color:red">Gestion des incidents</h1>
                            <div class="description">
                            	<p><h3>Cher(e) client(e): </h3>
                                     Pour la déclaration des incidents veuillez vous <b style="color:floralwhite">Authentifier</b> pour accéder au platform:
                                     </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Veuillez vous authentifier:</h3>
                            		<p>Entrez votre E-mail et Mot de passe :</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" runat="server" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">E-mail</label>
			                        <asp:TextBox placeholder="E-mail..." class="form-username form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" ForeColor="Red">Taper votre E-mail</asp:RequiredFieldValidator></td>

                                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Mot de passe :</label>
			                         <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Mot de passe..." class="form-password form-control" ></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" ForeColor="Red">Taper votre mot de passe</asp:RequiredFieldValidator></td>

                                     </div>
                                     <asp:Button ID="Button2"  class="btn" runat="server" Text="Se connecter" OnClick="Button1_Click" />
			                           <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>

                                   </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h4 style="color:white">Si vous n'avez pas de compte <a  href="Inscription.aspx">inscrivez-vous!!</a></h4>
                        	
                        </div>
                    </div>
                </div>
            </div>
            
        </div>

</asp:Content>
