<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/main.Master" AutoEventWireup="true" CodeBehind="ViewState.aspx.cs" Inherits="ProASP3_5.Part1.ViewState" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMainBody" runat="server">
        <asp:Label runat="server" id="lOut" enableviewstate="true" borderwidth="1" />
        <br />
        <asp:TextBox runat="server" id="txt1" width="30" />
        <asp:Button runat="server" id="btn1" text="click" />
        <asp:Button tooltip="Click to see viewstate and decrypted viewstate for this page" runat="server" id="btnDecrypt" text="Decrypt ViewState" 
            onclick="btnDecrypt_Click1"  />


    <h6>A word about View State Chunking</h6>
    <p>For situations (e.g. proxies&rsquo; and firewalls&rsquo; size restrictions on hidden field sizes), <em>ViewState Chunking</em>
    may be used to automatically split view state data into multiple fields to ensure each field is below a certain size.
    </p>
    <p>To implement this, you need to set the <code>maxPageStateField</code> attribute in web.config. Size is in <strong>bytes</strong>. </p>
    <code>
        &lt;configuration&gt;
            &lt;system.web&gt;
                &lt;pages maxPageStateField="1024" /&gt;
            &lt;/system.web&gt;
        &lt;/configuration&gt;
    </code>
    
    <p>NB. This actually involves additional processing and will therefore not improve performance!</p>
</asp:Content>
