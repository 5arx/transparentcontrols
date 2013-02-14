<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GridView.ascx.cs" Inherits="transparent.controls.databound.GridView" %>
<%@ register src="~/include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc2" %>
<asp:Label runat="server" id="lOut" EnableViewState="false" width="100%" />
<br />
<asp:GridView id="GridView1" runat="server" autogeneratecolumns="false" 
 allowpaging="true" pagesize="2" editrowstyle-backcolor="yellow" showheader="true" 
    PagerSettings-Mode="NextPreviousFirstLast"
    PagerSettings-NextPageText="next>"
    PagerSettings-PreviousPageText="prev"
    onpageindexchanging="GridView1_PageIndexChanging" 
    onrowcancelingedit="GridView1_RowCancelingEdit" 
    onrowediting="GridView1_RowEditing" 
    onrowupdating="GridView1_RowUpdating"  
    onrowdeleting="Gridview1_RowDeleting"
>
<Columns>
    <asp:TemplateField>
        <HeaderTemplate>
            VIN (Vehicle ID Number)
        </HeaderTemplate>
        <ItemStyle CssClass="formInput" />
        <ItemTemplate>
            <asp:Literal runat="server" ID="litVin" Text='<%#Eval("VIN") %>' />
        </ItemTemplate>
        <EditItemTemplate>
            <ItemStyle CssClass="formInput" />
            <asp:Literal runat="server" ID="litVin" Text='<%#Eval("VIN") %>' />
        </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField>
        <HeaderTemplate>
            Make
        </HeaderTemplate>
        
        <ItemStyle CssClass="formInput" />
        <ItemTemplate>
            <%#Eval("Make")%>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox runat="server" id="txtMake" text='<%#Eval("Make") %>' CssClass="formInput" />
        </EditItemTemplate>
    </asp:TemplateField>
    <asp:CommandField ControlStyle-CssClass="formInput" buttontype="button" showcancelbutton="true" showdeletebutton="true" showeditbutton="true" />
</Columns>
</asp:GridView>
<uc2:sourceviewer id="SourceViewer2" runat="server" />