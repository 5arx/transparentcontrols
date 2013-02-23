<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SourceViewer.ascx.cs"
    Inherits="transparent.include.ctl.SourceViewer" %>
<script type="text/javascript" src="/include/js/sourceviewer.js" language="javascript">
</script>
<div class="divSrcViewContainer">
    <span class="badge badge-info jsShowSrcPnl" runat="server" id="divSrcViewTitle" >
        i</span>
    <div runat="server" id="divSrcView" class="divSrcView popover fade right in">
       <a runat="server" id="a_SrcMarkup"  title="[aspx markup]"><span class="label label-info" id="a_SrcMarkup2">asp</span>
        </a>
        <a id="a_SrcCS" runat="server" title="[c# code]" class="sourceA">
         <span class="label label-info">c#</span></a>
        <a id="a_SrcDesigner" runat="server" title="[c# designer code]"
                    class="sourceA">
            <span class="label label-info">designer</span>
        </a>
        <%--<a id="a_Zip" runat="server" title="[download source]"
            class="sourceA">
           <img alt="[zip]" src="/include/img/zip.gif" />
        </a>
         --%>
    </div>
</div>
