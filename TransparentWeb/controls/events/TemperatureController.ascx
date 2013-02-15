<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TemperatureController.ascx.cs" Inherits="transparent.controls.events.EventsDemo1" %>

<%@ Register src="../../include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc1" %>

<div style="padding:1em;border:1px solid blue;text-align:center;">
    <h4>Temperature Controller</h4>
    <p>This class allows users to raise and lower the value of a temperature variable.</p>
    <asp:Button CssClass="btn" runat="server" ID="btnDown" Text="Lower" onclick="btnDown_Click" />
    <%-- Current Temp: <%= Temperature %>'C --%>
    <asp:Button CssClass="btn" runat="server" ID="btnUp" Text="Raise" onclick="btnUp_Click" />
    
    <uc1:SourceViewer ID="SourceViewer1" runat="server" />
</div>