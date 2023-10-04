<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Declaration.aspx.cs" Inherits="projet_stage.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Déclaration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style type="text/css">
        body {
            background-position:center center;
            background-image:url('image/2.jpg');
            background-repeat:no-repeat;
            background-attachment:fixed;
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
        h5{
           border-bottom:solid 1px;
           color:grey;
           font-style: italic;
           font-family: emoji;
        }
        
        .auto-style10 {
            height: 26px;
            width: 448px;
        }
        label{
            font-weight:bold;
            font-style:italic;

        }
       
        .auto-style11 {
            width: 448px;
        }
       fieldset{
           width:50%;
           margin:auto;
       }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
     <div class="w3-sidebar w3-bar-block w3-dark-grey w3-animate-left" style="display:none" id="mySidebar">
  <button class="w3-bar-item w3-button w3-large"
  onclick="w3_close()">Fermer &times;</button>
  <a href="Declaration.aspx" class="w3-bar-item w3-button">Déclaration</a>
  <a href="Incidents.aspx" class="w3-bar-item w3-button">Incidents</a>
  <a href="Technicien.aspx" class="w3-bar-item w3-button">Technicien</a>
  <a href="Aide.aspx" class="w3-bar-item w3-button">Se déconnecter</a>
</div>

<div>
  <button class="w3-button w3-white w3-xxlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
             
  </div>
    
</div>
        <form id="form1" runat="server"> 
            <%--<h2>Veuiller remplir le formulaire</h2>
            <fieldset class="auto-style4">
                <legend>Ajout incident : </legend>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label2" runat="server" Text="Type d'incident :"></asp:Label>&nbsp;</td>
                        <td style="position:center">
                            &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:incidentsConnectionString %>" SelectCommand="SELECT [etat] FROM [declaration]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp; <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="130px" CssClass="auto-style7">
                                <asp:ListItem>Materiel</asp:ListItem>
                                <asp:ListItem>Logiciel</asp:ListItem>
                            </asp:RadioButtonList></td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label3" runat="server" Text="Description :"></asp:Label></td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <textarea id="TextArea1" rows="4" class="auto-style11" runat="server" placeholder="Description bref d'incident..."></textarea></td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><asp:Label ID="Label4" runat="server" Text="Etat :"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style8" Width="131px">
                                <asp:ListItem>En cours</asp:ListItem>
                                <asp:ListItem>Résolu</asp:ListItem>
                            </asp:DropDownList></td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label5" runat="server" Text="Date de déclaration :"></asp:Label></td>
                        <td>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label6" runat="server" Text="Votre ID :"></asp:Label></td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style9" Width="129px" DataSourceID="SqlDataSource2" DataTextField="id" DataValueField="id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:incidentsConnectionString %>" SelectCommand="SELECT [id] FROM [client]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label7" runat="server" Text="Ville"></asp:Label></td>
                        <td class="auto-style7">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style10" Width="135px"></asp:TextBox></td>
                        <td class="auto-style7"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"></td>
                        <td></td>
                        <td class="auto-style12">
                            <asp:Button ID="Button1" runat="server" Text="Envoyer" ForeColor="Black" BorderColor="Blue" OnClick="Button1_Click" /></td>
                    </tr>
                </table>
            </fieldset>
            <br />
            <br />
            --%>

            <h2 style="font-weight:bold; font-style:oblique; text-align:center;color:floralwhite;">Veuiller remplir le formulaire</h2>
            <fieldset style="background-color:white">
            <h2 style="font-family:auto;color:orangered;">Formulaire de déclaration :</h2>
        <h5 style="color: gray; ">Ajout incident.</h5>
        
        <table>
            <tr><td class="auto-style11"><label for="type">Type d'incident :</label></td></tr>
            <tr><td class="auto-style11"><input type="radio" name="type">Materiel</td></tr>
            <tr><td class="auto-style10"><input type="radio" name="type">Logiciel</td></tr>
            <tr><td class="auto-style11"><label for="description">Description : </label></td></tr>
            <tr><td class="auto-style11"><textarea cols="40" rows="5" placeholder="Description bref d'incident..." maxlength="200"></textarea></td></tr>
            <tr><td class="auto-style11"><label for="Etat ">Etat :</label> <select >
                <option>En cours</option>
                <option>Résolu</option> </select></td></tr> 
            <tr><td class="auto-style11"><label for="date">Date de déclaration :</label></td></tr>
           <tr> <td class="auto-style11">
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </td></tr>
            <tr><td class="auto-style11"><label>Votre ID :</label>
            <select> <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                    </select></td></tr>

            <tr><td class="auto-style11"><label for="ville">Ville :</label></td></tr>
            <tr><td class="auto-style11"><input type="text"></td></tr>
            <tr> <td class="auto-style11"></td>
            <td><button type="submit"ForeColor="Black" BorderColor="Blue" >Envoyer </button></td></tr>
        </table>
                </fieldset>
            <br />
            <br />
        </form>


    <script>
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
}
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
}
</script>
</asp:Content>
