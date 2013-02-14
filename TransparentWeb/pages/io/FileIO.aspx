<%@ page autoeventwireup="true" codebehind="FileIO.aspx.cs" inherits="transparent.pages.io.FileIO"
   language="C#" masterpagefile="~/include/master/Transparent.Master" title="Untitled Page" %>

<%@ Register Src="~/controls/IO/FileIO.ascx" TagName="FileIO" TagPrefix="uc1" %>

<asp:content id="Content1" runat="server" contentplaceholderid="phMainBody">
    <uc1:FileIO ID="FileIO1" runat="server" />
    
</asp:content>
<asp:content id="Content2" runat="server" contentplaceholderid="phPageSpecificFooter">
</asp:content>
