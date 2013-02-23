<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SourceViewer.ascx.cs"
    Inherits="transparent.include.ctl.SourceViewer" %>
<script type="text/javascript" src="/include/js/sourceviewer.js" language="javascript">
</script>
<div class="divSrcViewContainer">
    <span runat="server" id="divSrcViewTitle" class="SrcViewTitle" onclick='toggleit(this.id);'>
        [show source] </span>
    <div runat="server" id="divSrcView" class="divSrcView">
        <a runat="server" class="sourceA" id="a_SrcMarkup"  title="[aspx markup]">
            [aspx]</a> 
        <a id="a_SrcCS" runat="server" title="[c# code]" class="sourceA">
                [c#]</a>
        <a id="a_SrcDesigner" runat="server" title="[c# designer code]"
                    class="sourceA">[designer]</a>
        <%--<a id="a_Zip" runat="server" title="[download source]"
            class="sourceA">
           <img alt="[zip]" src="/include/img/zip.gif" />
        </a>
         --%>
    </div>
</div>
