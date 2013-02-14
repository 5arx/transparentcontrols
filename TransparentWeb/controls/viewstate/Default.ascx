<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="transparent.controls.viewstate.Default" %>
<%@ Register Src="../../include/ctl/SourceViewer.ascx" TagName="SourceViewer" TagPrefix="uc1" %>
<table class="layoutTbl">
    <tr>
        <td>
            <asp:TextBox ID="tbViewstateKey" runat="server" CssClass="formInput">
            </asp:TextBox>
        </td>
        <td>
            <asp:TextBox ID="tbViewstateValue" runat="server" CssClass="formInput">
            </asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Literal runat="server" ID="lViewState" EnableViewState="false" />
            <p>
                <asp:Button runat="server" ID="btnAdd" Text="Add to ViewState" OnClick="btnAdd_Click"
                    CssClass="formInput" />
            </p>
        </td>
    </tr>
</table>
<uc1:SourceViewer ID="SourceViewer1" runat="server" />
