<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Repeater.ascx.cs" Inherits="transparent.controls.databound.Repeater" %>
<%@ Register src="../../include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc1" %>
<asp:Label runat="server" ID="lout" />
<asp:Repeater runat="server" ID="rpt1" OnItemCommand="rpt1_ItemCommand">
    <HeaderTemplate>
        <table border="1">
            <thead>
                <tr>
                    <th>
                        Name
                    </th>
                    <th>
                        Date of Birth
                    </th>
                    <th>
                        Email
                    </th>
                    <th>
                        <asp:Button runat="server" ID="tstbtn" CssClass="btn" Text="Test" CommandArgument="test" CommandName="test" />
                    </th>
                </tr>
            </thead>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td>
                <span><strong><a class="margin:1em;border:1px solid #000;" title='<%# Eval("ID") %>'>
                    i</a></strong>
                    <%# Eval("Forename") %>
                    <%# Eval("Surname") %></span>
            </td>
            <td>
                <span>
                    <%# Eval("DateOfBirth", "{0:d MMMM yyyy}") %></span>
            </td>
            <td>
                <span>
                    <%# Eval("Email") %></span>
            </td>
            <td>
                <asp:Button cssclass="btn" runat="server" ID="btnEdit" Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("ID") %>' />
                <asp:Button cssclass="btn" runat="server" ID="Button1" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtFname" />
                <asp:TextBox runat="server" ID="txtSname" />
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtDob" />
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtEmail" />
            </td>
            <td>
                <asp:Button cssclass="btn" runat="server" ID="btnAdd" Text="Add" CommandArgument="Add" CommandName="Add" />
                <input type="reset" value="Reset" />
            </td>
        </tr>
        </table>
    </FooterTemplate>
</asp:Repeater>
<uc1:SourceViewer ID="SourceViewer1" runat="server" />

