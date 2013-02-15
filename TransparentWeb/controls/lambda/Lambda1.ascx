<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Lambda1.ascx.cs" Inherits="transparent.controls.lambda.Lambda1" %>
<%@ Register src="../../include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc1" %>
<script language="javascript" type="text/javascript">
    $().ready(function () {
        $('#divAdd').hide();
        $('.pToggle').click(
            function (event) {
                if ($('#divAdd').is(':hidden')) {
                    $('#divAdd').show(650);
                    $('#pToggle').hide(550);
                }
                else {
                    $('#divAdd').hide(650);
                    $('#pToggle').show(650);
                }
                event.preventDefault();
            }
        );
        });

        function validateDob(sender, args) 
        {
            if (args.Value.length > 0)
            {
                try{
                    var d = Date.parse(args.Value).toString();
                    args.IsValid = true;
                }
                catch(ex){
                    args.IsValid = false;
                }
//                args.IsValid = args.Value.length > 0 && Date.parse(args.Value);
            }
            else {
                args.IsValid = false;
            }
        }
</script>
<div style="border: 2px solid #0066cc; padding: 2em;">
    <p>
        Currently sorting by
        <%= this.CurrentSort.ToString() %></p>
    <table border="0" width="600" style="border: 1px solid #000;">
        <asp:Repeater runat="server" ID="rptList">
            <HeaderTemplate>
                <thead>
                    <tr>
                        <td><span>ID</span></td>
                        <td>
                            <asp:LinkButton CssClass='bodyLink' runat="server" ID="lbfname" CommandName="forename"
                                OnClick="sortButton_Click" Text="Forename" ToolTip="Sort by Forname" />
                            <img alt='[sort indicator]' runat="server" id="sortImgForename" src="/include/img/sortasc.gif"
                                visible="false" />
                        </td>
                        <td>
                            <asp:LinkButton CssClass='bodyLink' runat="server" ID="lbSurname" CommandName="surname"
                                OnClick="sortButton_Click" Text="Surname" ToolTip="Sort by Surname" />
                            <img alt='[sort indicator]' runat="server" id="sortImgSurname" src="/include/img/sortasc.gif"
                                visible="false" />
                        </td>
                        <td>
                            <asp:LinkButton CssClass='bodyLink' runat="server" ID="lbDob" CommandName="birthdate"
                                OnClick="sortButton_Click" Text="Date of Birth" ToolTip="Sort by Date of Birth" />
                            <img alt='[sort indicator]' runat="server" id="sortImgbirthdate" src="/include/img/sortasc.gif"
                                visible="false" />
                        </td>
                        <td>
                            <asp:LinkButton CssClass='bodyLink' runat="server" ID="lbCompany" CommandName="company"
                                OnClick="sortButton_Click" Text="Company" ToolTip="Sort by Company" />
                            <img alt='[sort indicator]' runat="server" id="sortImgcompany" src="/include/img/sortasc.gif"
                                visible="false" />
                        </td>
                        <td>
                            <asp:LinkButton CssClass='bodyLink' runat="server" ID="lbAddress" CommandName="address"
                                OnClick="sortButton_Click" Text="Address" ToolTip="Sort by Address" />
                            <img alt='[sort indicator]' runat="server" id="sortImgAddress" src="/include/img/sortasc.gif"
                                visible="false" />
                        </td>
                        <td>
                            <asp:LinkButton CssClass='bodyLink' runat="server" ID="lbTown" CommandName="town"
                                OnClick="sortButton_Click" Text="Town" ToolTip="Sort by Town" />
                            <img alt='[sort indicator]' runat="server" id="sortImgTown" src="/include/img/sortasc.gif"
                                visible="false" />
                        </td>
                        <td>
                            <asp:LinkButton CssClass='bodyLink' runat="server" ID="lbcounty" CommandName="county"
                                OnClick="sortButton_Click" Text="County" ToolTip="Sort by County" />
                            <img alt='[sort indicator]' runat="server" id="sortImgCounty" src="/include/img/sortasc.gif"
                                visible="false" />
                        </td>
                    </tr>
                </thead>
                <tbody>
            </HeaderTemplate>
            <FooterTemplate>
            </FooterTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <span id='ID:<%# Eval("ID") %>' onclick="alert(this.id);" 
                            style="border:1px solid red;cursor:pointer;font-size:1.2em;font-weight:bold;" 
                            title='<%# Eval("ID") %>'>id</span>
                    </td>
                    <td>
                        <span>
                            <%# Eval ("Forename") %>
                        </span>
                    </td>
                    <td>
                        <span>
                            <%# Eval ("Surname") %></span>
                    </td>
                    <td>
                        <span>
                            <%# string.Format(Eval("dateofbirth").ToString(), "dddd MMMM yyyy")%></span>
                    </td>
                    <td>
                        <span>
                            <%# Eval("Company")%></span>
                    </td>
                    <td>
                        <span>
                            <%# Eval("Address")%></span>
                    </td>
                    <td>
                        <span>
                            <%# Eval ("Town") %></span>
                    </td>
                    <td>
                        <span>
                            <%# Eval("County")%></span>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr>
            <td colspan="8" align="center">
                <span id="pToggle" class="pToggle" style="border: 1px solid #000;">
                    Add New Contact
                </span>
                <div id="divAdd">
                    <table width="100" style="text-align: left;">
                        <tr>
                            <td colspan="2" align="center">
                                <h5>
                                    Add New Contact</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    Forename</p>
                                <asp:TextBox runat="server" ID="txtfname" CssClass="resetable" MaxLength="50" Columns="10" />
                            </td>
                            <td>
                                <p>
                                    Surname</p>
                                <asp:TextBox runat="server" ID="txtsname" CssClass="resetable" MaxLength="50" Columns="10" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <p>
                                    Date of Birth</p>
                                <asp:TextBox runat="server" ID="txtDateOfBirth" CssClass="resetable" MaxLength="10"
                                    Columns="11" />
                                <asp:CustomValidator runat="server" ID="valdob" EnableClientScript="true" ClientValidationFunction="validateDob"
                                    OnServerValidate="valdob_ServerValidate" ErrorMessage="Enter date of Birth" ControlToValidate="txtDateOfBirth"
                                    Text="*" ValidateEmptyText="True" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <p>
                                    Company</p>
                                <asp:TextBox runat="server" ID="txtcompany" MaxLength="50" Columns="10" />
                            </td>
                        </tr>
                        <tr valign="top">
                            <td>
                                <p>
                                    Address</p>
                                <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine" MaxLength="50" Columns="15" />
                            </td>
                            <td style="vertical-align: top;">
                                <p>
                                    Town</p>
                                <asp:TextBox runat="server" ID="txtTown" MaxLength="50" Columns="10" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    County</p>
                                <asp:TextBox runat="server" ID="txtCounty" MaxLength="50" Columns="10" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="7" align="center">
                                <button class="btn">
                                    Cancel</button>
                                <asp:Button runat="server" CausesValidation="true" ID="btnAdd" OnClick="btnAdd_Click"
                                   CssClass="btn" Text="Add" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
<uc1:SourceViewer ID="SourceViewer1" runat="server" />

</div>

