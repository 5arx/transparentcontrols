<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="transparent.pages.events.Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phMainBody" runat="server">
    <h1>
        Events</h1>
    <div id="mainContentDiv">
        <p>
            There are four steps to creating and handling events:</p>
        <ul>
            <li>Create a delegate (eventHandler) class to handle the event.</li>
            <li>Create an object to hold the event data extending <code>System.EventArgs</code></li>
            <li>Declare an event.</li>
            <li>Subscribe to the event in the client class.</li>
            <li>Write custom code in the client class to react to the event.</li>
        </ul>
    </div>
    <img alt="[overview]" title="Double click to view full size" src="/include/img/aspcustomevents.png"
        style="width: 600px;" ondblclick="window.open(this.src);" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
