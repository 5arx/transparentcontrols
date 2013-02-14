<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="ClassExplorer.aspx.cs" Inherits="transparent.pages.reflection.ClassExplorer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
<h2>Class Explorer</h2>

<p>
    Class:<asp:DropDownList runat="server" ID="ddlClasses" />
    <asp:RequiredFieldValidator runat="server" ID="valClasses" ControlToValidate="ddlClasses" ErrorMessage="*"
       Text="Please select a class" InitialValue="" EnableClientScript="true" />
</p>
<p>
    Assembly:<asp:FileUpload runat="server" ID="uploadAssembly" />
        <asp:CustomValidator runat="server" id="valUpload" 
        ErrorMessage="Assembly invalid" Text="*" 
        onservervalidate="valUpload_ServerValidate" ControlToValidate="uploadAssembly" />
</p>
<p>
    <asp:Button runat="server" ID="btnExplore" OnClick="btnExplore_Click" Text="Explore" />
</p>
<div style="height:550px; overflow:auto;">
    <asp:Repeater runat="server" ID="rptTypes">
        <ItemTemplate>
            <p><strong><%# Eval("FullName") %></strong></p>
            <asp:Repeater runat="server" ID="rptMethods">
                <ItemTemplate>
                <%# Eval("") %>
                <br />
                </ItemTemplate>
            </asp:Repeater>
        </ItemTemplate>
    </asp:Repeater>
    <asp:Literal runat="server" ID="litOut" EnableViewState="false" />
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
