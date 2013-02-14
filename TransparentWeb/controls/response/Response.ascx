<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Response.ascx.cs" Inherits="transparent.controls.response.Response" %>
<%@ Register src="../../include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc1" %>
<script type="text/javascript">
    $(document).ready(function () {
        $(".togglee").hide();

        $("SPAN.toggler").click(function (event) {
            var _classes = $(this).attr("class");
            if (_classes.match(/toggles-/gi)) {
                //alert('toggler!' + _classes);

                var x = _classes.split(' ');
                for (var i = 0; i < x.length; i++) {
                    if (x[i].match(/toggles-/gi)) {
                        //alert(x[i].replace('toggles-', ''));
                        var _divname = "." + x[i].replace('toggles-', '');
                        if ($(_divname).is(":visible")) {
                            $(_divname).hide();
                        }
                        else {
                            $(_divname).show();
                        }
                    }
                }

            }
        });
    }
);
</script>
<style type="text/css">
.toggler{
    font-weight:bold;
    color:Red;
    font-size:1em;
    cursor:pointer;
}
</style>
<p>Send an image to the browser and open a &quot;Save as ...&quot; dialog box ... <span class="toggler toggles-divImgServe">View</span></p>

<div id="divImgServe" class="divImgServe togglee">
<p>This examples uses the Response object&rsquo;s <code>TransmitFile(...)</code> method to send a file directly to the browser.</p>
<asp:Button runat="server" Text="Image" ID="btnServerImg" 
    onclick="btnServerImg_Click" />
<uc1:SourceViewer ID="SourceViewer1" runat="server" />
</div>