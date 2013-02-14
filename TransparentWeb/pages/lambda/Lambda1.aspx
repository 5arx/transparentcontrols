<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="Lambda1.aspx.cs" Inherits="transparent.pages.lambda.Lambda1" %>
<%@ Register src="../../controls/lambda/Lambda1.ascx" tagname="Lambda1" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
Lambdas :: Demo1
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
Lambda Demo1
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <uc1:Lambda1 ID="Lambda1Ctl" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
