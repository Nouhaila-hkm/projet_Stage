<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Technicien.aspx.cs" Inherits="projet_stage.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Technicien
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style type="text/css">
        h2{
            font-weight:bold;
            font-style:oblique;
            text-align:center;
            color:black;
        }
        p{
            text-align:center;
        }
        .auto-style4 {
            margin-left: 304px;
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
        <h2>La liste des techniciens</h2>
        <p>Choisissez la ville du technicien :<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:incidentsConnectionString2 %>" SelectCommand="SELECT [ville] FROM [technicien]"></asp:SqlDataSource>
        
        &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ville" DataValueField="ville"></asp:DropDownList>&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Rechercher" />
        </p>
         <br />
       
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idtec" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" CssClass="auto-style4">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="idtec" HeaderText="ID_Technicien :" InsertVisible="False" ReadOnly="True" SortExpression="idtec" />
                <asp:BoundField DataField="nomt" HeaderText="Nom :" SortExpression="nomt" />
                <asp:BoundField DataField="prenomt" HeaderText="Prenom :" SortExpression="prenomt" />
                <asp:BoundField DataField="tele" HeaderText="Telephone :" SortExpression="tele" />
                <asp:BoundField DataField="adresset" HeaderText="Adresse :" SortExpression="adresset" />
                <asp:BoundField DataField="ville" HeaderText="Ville :" SortExpression="ville" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:incidentsConnectionString3 %>" SelectCommand="SELECT * FROM [technicien] WHERE ([ville] = @ville)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="ville" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </form>
    <br />
     <script>
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
}
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
}
</script>
</asp:Content>
