$(document).ready(function () {

    $("#lhmHeaderFiles").click(function () {
        $("#divDirMenuFiles").slideToggle();
    });

    $("#lhmHeaderSubs").click(function () {
        $("#divDirMenuFolders").slideToggle();
        if ($("#divDirMenuFolders").is(":hidden")) {
            $(this).attr("title", "click to reveal");
        }
        else {
            $(this).attr("title", "click to hide");
        }
    });

    $("#AToggleFolders").click(function (evt) {
        if ($('#tdDirMenu').is(':visible')) {
            $('#tdDirMenu').hide();
        }
        else {
            $('#tdDirMenu').show();
        }
    });

});         