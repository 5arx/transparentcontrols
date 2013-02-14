/*
////TODO: JQueryify this function
function ToggleSrceViewVisiOLD(){
if (document.getElementById("divSrcView").className != 'invisi'){
document.getElementById("divSrcView").className = 'invisi';
document.getElementById("divSrcViewTitle").className = 'SrcViewTitle';      
}
else{
document.getElementById("divSrcView").className = 'visi';
document.getElementById("divSrcViewTitle").className = 'invisi';      
}
}
*/
$(document).ready(function () {
    var winSrce = null; //This is the reference to the SourceViewerWindow
    $('#divSourcePanel').hide();
    $("#__AHideSourceViewer").hide();
    $('.divSrcView').hide();
    $(".oLogo").hide();

    $('#__AToggleSourceView').click(function (evt) {
        if ($(this).text().indexOf("Opaque") > -1) {
            $(this).text("Transparent");
            $(".SrcViewTitle").slideUp('slow');
            $(".oLogo").show();
            $(".tLogo").hide();
            $(".divSrcView").hide();
        }
        else {
            $(this).text("Opaque");
            $(".SrcViewTitle").slideDown('fast');
            $(".oLogo").hide();
            $(".tLogo").show();
            $(".divSrcView").hide();
        }
        evt.stopImmediatePropogation();
        //event.stopImmediatePropagation();


    });

    $("#__AToggleSourceViewer").click(function (evt) {
        if ($(this).text().substring(0, 4) == "Hide") {
            winSrce.close();
            $(this).text($(this).text().replace('Hide', ''));
        }
        else {
            if (winSrce == null || winSrce.closed) {
                winSrce = window.open("/SourceViewerCtl", "_sourceViewerWindow", 'width=400,height=600,location=no,top=0,left=400,toolbar=no,title=SourceViewer&trade;scrollbars=no', true);
            }
            if (!winSrce.closed) {
                winSrce.focus();
            }

            $(this).text("Hide " + $(this).text());
        }
        evt.stopImmediatePropogation();
    });

    $(".sourceA").click(function (evt) {

        // increase the default animation speed to exaggerate the effect
        $.fx.speeds._default = 1000;
        $(function () {
            //            var $_srcdialog = $('<div id="divSourcePanel"></div>').dialog({ autoOpen: false, title: 'SourceViewer' });

            $("#divSourcePanel").dialog({
                autoopen: false,
                position: "center",
                show: "blind",
                hide: "slide",
                modal: true,
                draggable: false,
                maxHeight: 300,
                maxWidth:800,
                width: 800,
                zindex:9999,
                buttons: { "Ok": function () {
                    $(this).dialog("close");
                } 
                }


            });
        });

        //AJaX Call
        $.get($(this).attr("href"), function (data) {
            //alert($('#divSourcePanel1').length);
            //if ($('#divSourcePanel').is(':visible')) {
            //  $('#divSourcePanel').slideUp();
            //}
            $('#divSourceText').html(data);
        });
        evt.preventDefault();
        evt.stopImmediatePropagation();

        return false;
    });


    //$('#m_SourceViewDebug').hide();
    /*    $(".SrcViewTitle").click(function (event) {
    var div1, div2;
    div1 = $("#" + objId.replace('Title', ''));
    div2 = $("#" + objId);

    //alert(div1.attr("id"));
    //alert(div2.attr("id"));

    if (div1.attr('class').match(/divSrcView/gi) && !div1.attr('class').match(/formLabel/gi)) {
    //alert('can see div1');
    //div1.toggle();
    if (div1.is(':hidden'))
    { div1.show(500); }
    else {
    div1.hide(350);
    }
    if (div2.text().match(/show source/gi)) {
    div2.text('[hide]');
    }
    else {
    div2.text('[show source]');
    }
    }
    });
    */
});

function showSource(obj) {
    //alert('showSource ' + obj);
    $("#m_SourceViewDebug").load(obj.href, function (data) {
       // $("#m_SourceViewDebug").text(data);
        //$('#m_SourceViewDebug').show();  
        alert(data);
        return;
        //Cancel the link behavior  
        e.preventDefault();
        //Get the A tag  
        var id = $(obj).attr('href');

        //Get the screen height and width  
        var maskHeight = $(document).height();
        var maskWidth = $(window).width();

        //Set height and width to mask to fill up the whole screen  
        $('#mask').css({ 'width': maskWidth, 'height': maskHeight });

        //transition effect       
        $('#m_SourceViewDebug').fadeIn(1000);
        $('#m_SourceViewDebug').fadeTo("slow", 0.8);

        //Get the window height and width  
        var winH = $(window).height();
        var winW = $(window).width();

        //Set the popup window to center  
        $(id).css('top', winH / 2 - $(id).height() / 2);
        $(id).css('left', winW / 2 - $(id).width() / 2);

        //transition effect  
        $(id).fadeIn(2000);
    });
}

function toggleit(objId) {
    //    alert($(objId));

    var div1, div2;
    div1 = $("#" + objId.replace('Title', ''));
    div2 = $("#" + objId);

    //alert(div1.attr("id"));
    //alert(div2.attr("id"));

    if (div1.attr('class').match(/divSrcView/gi) && !div1.attr('class').match(/SrcViewTitle/gi)) {
        //alert('can see div1');
        //div1.toggle();
        if (div1.is(':hidden'))
        { div1.slideDown(900); }
        else {
            div1.slideUp(450);
        }
        if (div2.text().match(/show source/gi)) {
            div2.text('[hide]');
        }
        else {
            div2.text('[show source]');
        }
    }
}

function ToggleSrceViewVisi(objId) {
    alert($(objId).ToString());

    var div1, div2;
    div1 = document.getElementById(objId.replace('Title', ''));
    div2 = document.getElementById(objId)

    alert($(objId).ToString());
    return;

    if (div1.className != 'invisi') {

        div1.className = 'invisi';
        div2.childNodes[0].innerText = '[show source]';
    }
    else {
        div1.className = 'visi';
        div2.childNodes[0].innerText = '[hide]';
    }
}

function CopyToClipboard() {
    CopiedTxt = document.selection.createRange();
    CopiedTxt.execCommand("Copy");
}
