<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gerichte.aspx.cs" Inherits="SpeisekarteProject.Gerichte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col" style="top:10px; margin-top:100px;margin-left:300px;">
        <div class="row">
            <asp:Label ID="lblName" >Gericht Name</asp:Label>
            <asp:TextBox ID="txtName" runat="server" style="margin-left:111px"></asp:TextBox>
        </div>

        <div class="row">
            <asp:Label ID="lblKurzschreibung"  >Gericht Kurzschreibung</asp:Label>
            <asp:TextBox ID="txtKurzschreibung" runat="server" style="margin-left:52px"></asp:TextBox>
        </div>

        <div class="row">
            <asp:Label ID="lblPreis"  >Gericht Preis</asp:Label>
            <asp:TextBox ID="txtPreis" runat="server" style="margin-left:117px"></asp:TextBox>
        </div>

        <div class="row">
            <asp:Label ID="lblHauptkategorie"  >Gericht Hauptkategorie</asp:Label>
            <asp:TextBox ID="txtHauptkategorie" runat="server" style="margin-left:54px"></asp:TextBox>
        </div>

        <div class="row">
            <asp:Label ID="lblZeitgesteuert" >Gericht Zeitgesteuert</asp:Label>
            <asp:TextBox ID="txtZeitgesteuert" runat="server" style="margin-left:67px"></asp:TextBox>
        </div>

        <div class="row">
            <asp:Label ID="lblStatus"  >Gericht Status</asp:Label>
            <asp:TextBox ID="txtStatus" runat="server" style="margin-left:107px"></asp:TextBox>
        </div>

         <div class="row">
            <asp:Label ID="lblWartezeit" >Gericht Wartezeit</asp:Label>
            <asp:TextBox ID="txtWartezeit" runat="server" style="margin-left:88px"></asp:TextBox>
        </div>

        <div class="row">
            <asp:Button ID="btnAdd" Text="Gericht hinzufügen" runat="server" OnClick="btnAdd_Click" />
        </div>
        <div class="row">
            <asp:Button ID="btnLoad" Text="Gericht ausladen" runat="server" OnClick="btnLoad_Click"/>
        </div>
    </div>
</asp:Content>
