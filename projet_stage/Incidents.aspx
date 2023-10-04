<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Incidents.aspx.cs" Inherits="projet_stage.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Incidents
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style type="text/css">

        .auto-style4 {
            margin-left: 40px;
        }
        h2{
            font-weight:bold;
            font-style:oblique;
            text-align:center;
            color:black;
        }
        .auto-style5 {
            margin-left: 87px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
     <form id="form1" runat="server">
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
         <h2>Détails des incidents </h2>
<div style="margin-left:auto;margin-right:auto;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id,numd,idtec" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style4">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="nomc" HeaderText="Nom client :" SortExpression="nomc" />
            <asp:BoundField DataField="prenomc" HeaderText="Prenom client :" SortExpression="prenomc" />
            <asp:BoundField DataField="cin" HeaderText="CIN :" SortExpression="cin" />
            <asp:BoundField DataField="type_incident" HeaderText="Type d'incident :" SortExpression="type_incident" />
            <asp:BoundField DataField="descri" HeaderText="Description :" SortExpression="descri" />
            <asp:BoundField DataField="date_declaration" HeaderText="Date de déclaration :" SortExpression="date_declaration" />
            <asp:BoundField DataField="nomt" HeaderText="Nom Tech :" SortExpression="nomt" />
            <asp:BoundField DataField="prenomt" HeaderText="Prenom Tech :" SortExpression="prenomt" />
            <asp:BoundField DataField="tele" HeaderText="Telephone :" SortExpression="tele" />
            <asp:BoundField DataField="etat" HeaderText="Etat :" SortExpression="etat" ApplyFormatInEditMode="True" />
            <asp:BoundField DataField="ville1" HeaderText="Ville :" SortExpression="ville1" />
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:incidentsConnectionString4 %>" SelectCommand="SELECT* FROM client INNER JOIN declaration ON client.id = declaration.id INNER JOIN technicien ON declaration.numd = technicien.numd"></asp:SqlDataSource>
     <br />
    </div>
         <br />
         <h2>Mise à jour de la déclaration</h2>
         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="numd" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" CssClass="auto-style5">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="type_incident" HeaderText="Type d'incident :" SortExpression="type_incident" />
                 <asp:BoundField DataField="descri" HeaderText="Description :" SortExpression="descri" />
                 <asp:BoundField DataField="etat" HeaderText="Etat :" SortExpression="etat" />
                 <asp:BoundField DataField="date_declaration" HeaderText="Date de déclaration :" SortExpression="date_declaration" />
                 <asp:BoundField DataField="id" HeaderText="Votre ID :" SortExpression="id" />
                 <asp:BoundField DataField="ville" HeaderText="Ville :" SortExpression="ville" />
             </Columns>
             <EditRowStyle BackColor="#2461BF" />
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#EFF3FB" />
             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F5F7FB" />
             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
             <SortedDescendingCellStyle BackColor="#E9EBEF" />
             <SortedDescendingHeaderStyle BackColor="#4870BE" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:incidentsConnectionString5 %>" DeleteCommand="DELETE FROM [declaration] WHERE [numd] = @numd" InsertCommand="INSERT INTO [declaration] ([type_incident], [descri], [etat], [date_declaration], [id], [ville]) VALUES (@type_incident, @descri, @etat, @date_declaration, @id, @ville)" SelectCommand="SELECT * FROM [declaration]" UpdateCommand="UPDATE [declaration] SET [type_incident] = @type_incident, [descri] = @descri, [etat] = @etat, [date_declaration] = @date_declaration, [id] = @id, [ville] = @ville WHERE [numd] = @numd">
             <DeleteParameters>
                 <asp:Parameter Name="numd" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="type_incident" Type="String" />
                 <asp:Parameter Name="descri" Type="String" />
                 <asp:Parameter Name="etat" Type="String" />
                 <asp:Parameter DbType="Date" Name="date_declaration" />
                 <asp:Parameter Name="id" Type="Int32" />
                 <asp:Parameter Name="ville" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="type_incident" Type="String" />
                 <asp:Parameter Name="descri" Type="String" />
                 <asp:Parameter Name="etat" Type="String" />
                 <asp:Parameter DbType="Date" Name="date_declaration" />
                 <asp:Parameter Name="id" Type="Int32" />
                 <asp:Parameter Name="ville" Type="String" />
                 <asp:Parameter Name="numd" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
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
