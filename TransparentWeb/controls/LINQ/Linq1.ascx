<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Linq1.ascx.cs" Inherits="transparent.controls.LINQ.Linq1" %>
<%@ Register src="../../include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc1" %>
<script type="text/javascript">
    $(document).ready(function () {
        $('#divAddRecord').hide();

        $('#btnToggleAdd').click(function (evt) {
            $('#divAddRecord').toggle();
            
            var _addMode = $('#divAddRecord').is(':visible');

            //alert(_addMode);

            //ValidatorEnable($('#<%= valtxtname.ClientID  %>'), _addMode);
            
            $(this).val(_addMode ? 'Hide' : 'Add Record');
        });
    });
</script>
<asp:Repeater runat="server" ID="rptPeople">
    <HeaderTemplate>
    <table style="width:100%;">
        <thead>
            <tr>
                <td colspan="2">
                    <p>Name
                        <asp:ImageButton Visible="true" runat="server" ID="ibtSortName" ImageUrl="/include/img/" CommandName="SortClick" CommandArgument="Name" /> 
                    </p>
                </td>
                <td>
                    <p>Gender
                        <asp:ImageButton Visible="true" runat="server" ID="ibtSortGender" ImageUrl="/include/img/" CommandName="SortClick" CommandArgument="Gender" />
                    </p>
                </td>
                <td>
                    <p>
                        Age <asp:ImageButton Visible="true" runat="server" ID="ibtSortAge" ImageUrl="/include/img/" CommandName="SortClick" CommandArgument="Age" />
                    </p>
                </td>
            </tr>
        </thead>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <%--<td><%# Eval("ID") %></td>--%>
            <td colspan="2"><%# Eval("Name") %></td>
            <td><%# Eval("Gender") %></td>
            <td><%# Eval("Age") %></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
    </table>
    </FooterTemplate>
</asp:Repeater>
<p><input type="button" id="btnToggleAdd" value="Add Record" /></p>

<div id="divAddRecord">
    <p>Name: <asp:textbox runat="server" ID="txtname" />
        <asp:RequiredFieldValidator runat="server" ID="valtxtname" ControlToValidate="txtname" ErrorMessage="Name Required"
         Text="Name Required" EnableClientScript="true" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname" 
            ValidationExpression="[a-z]+ [a-z]+" ErrorMessage="Forename and Surname"
         Text="Forename and Surname" EnableClientScript="true" />
    </p>
    <p>Age: <asp:textbox runat="server" ID="txtAge" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtAge" ValidationExpression="[0-9]+" ErrorMessage="Age must be a number"
         Text="Age must be numeric" EnableClientScript="true" />
         <asp:RequiredFieldValidator runat="server" ID="valAge" ControlToValidate="txtAge" ErrorMessage="Age Required"
         Text="Age Required" EnableClientScript="true" />
    </p>
    <p>Gender:  <select runat="server" id="ddlGender">
                    <option value="">Select ...</option>
                    <option value="M">Male</option>
                    <option value="F">Female</option>
                    <option value="T">Transgender</option>
                </select>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="ddlGender" Text="Gender Required"
                 ErrorMessage="Gender required" />
    </p>
    <p><asp:Button runat="server" ID="btnAdd" Text="Add" /></p>
</div>
<uc1:SourceViewer ID="SourceViewer1" runat="server" />
