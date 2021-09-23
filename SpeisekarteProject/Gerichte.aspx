<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gerichte.aspx.cs" Inherits="SpeisekarteProject.Gerichte" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col" style="top: 10px; margin-top: 100px; margin-left: 300px;">
        <div class="row">
            <asp:Label ID="lblName">Gericht Name</asp:Label>
            <asp:TextBox ID="txtName" runat="server" Style="margin-left: 111px"></asp:TextBox>
        </div>

        <div class="row">
            <asp:Label ID="lblKurzschreibung">Gericht Kurzschreibung</asp:Label>
            <asp:TextBox ID="txtKurzschreibung" runat="server" Style="margin-left: 52px"></asp:TextBox>
        </div>

        <div class="row">
            <asp:Label ID="lblPreis">Gericht Preis</asp:Label>
            <asp:TextBox ID="txtPreis" runat="server" Style="margin-left: 117px"></asp:TextBox>
        </div>

        <div class="row">
            <asp:Label ID="lblHauptkategorie">Gericht Hauptkategorie</asp:Label>
            <asp:DropDownList ID="ddlHauptkategorie" runat="server" Style="width: 184px; margin-left: 54px">
                <asp:ListItem Text="Vorspeise" Value="Vorspeise"></asp:ListItem>
                <asp:ListItem Text="Hauptgang" Value="Hauptgang"></asp:ListItem>
                <asp:ListItem Text="Dessert" Value="Dessert"></asp:ListItem>
                <asp:ListItem Text="Getränk" Value="Getränk"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="row">
            <asp:Label ID="lblZeitgesteuert">Gericht Zeitgesteuert</asp:Label>
            <asp:DropDownList ID="ddlZeitgesteuert" runat="server" Style="width: 184px; margin-left: 67px">
                <asp:ListItem Text="Frühstück" Value="Frühstück"></asp:ListItem>
                <asp:ListItem Text="Mittagskarte" Value="Mittagskarte"></asp:ListItem>
                <asp:ListItem Text="Abend" Value="Abend"></asp:ListItem>
                <asp:ListItem Text="Wochenende/Woche" Value="Wochenende/Woche"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="row">
            <asp:Label ID="lblStatus">Gericht Status</asp:Label>
            <asp:DropDownList ID="ddlStatus" runat="server" Style="width: 184px; margin-left: 109px">
                <asp:ListItem Text="Aktiv" Value="Frühstück"></asp:ListItem>
                <asp:ListItem Text="Inaktiv" Value="Mittagskarte"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="row">
            <asp:Label ID="lblWartezeit">Gericht Wartezeit</asp:Label>
            <asp:TextBox ID="txtWartezeit" runat="server" Style="margin-left: 88px"></asp:TextBox>
        </div>

        <div class="row">
            <asp:Button ID="btnAdd" Text="Gericht hinzufügen" runat="server" OnClick="btnAdd_Click" />
        </div>
    </div>
</asp:Content>
