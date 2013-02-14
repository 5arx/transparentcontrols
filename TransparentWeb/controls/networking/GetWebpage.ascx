<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GetWebpage.ascx.cs" Inherits="transparent.controls.networking.GetWebpage"  %>
<%@ register src="~/include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc2" %>
<h6>Scrape a Web Page</h6>

<table border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <label for="txtUrl" class="formLabel" >Enter URI: </label>
        
            <asp:TextBox runat=server ID="txtUrl" CssClass="formInput" TextMode="singleline" />
            <asp:RegularExpressionValidator runat="server" id="regurl" ControlToValidate="txtUrl"
                ValidationExpression="^(((h|H?)(t|T?)(t|T?)(p|P?)(s|S?))\://)?(www.|[a-zA-Z0-9].)[a-zA-Z0-9\-\.]+\.[a-zA-Z]*$"
                Text="Please enter a valid url." EnableClientScript="true" Enabled="false"  />
            <asp:RequiredFieldValidator runat="server" id="reqUrl" ControlToValidate="txtUrl"
                Text="Please enter a valid url." EnableClientScript="true" Enabled="true" />
        </td>
        <td>
            <asp:Button runat="server" ID="btnSubmit" Text="View Code" OnClick="btnSubmit_Click" CssClass="formInput" />
        &nbsp;
            <asp:CheckBox runat="server" ID="chViewSource" Text="View Rendered" CssClass="formLabel" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <div style="width:40em; overflow:auto;height:20em;">
                <asp:Label runat="server" ID="lblHTML" Width="90%" />
            </div>
        </td>
    </tr>
</table>

<uc2:sourceviewer id="SourceViewer1" runat="server" />