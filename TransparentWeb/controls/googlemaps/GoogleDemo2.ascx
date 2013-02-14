<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GoogleDemo2.ascx.cs"
    Inherits="transparent.controls.googlemaps.GoogleDemo2" %>
<%@ Register Src="../../include/ctl/SourceViewer.ascx" TagName="SourceViewer" TagPrefix="uc1" %>
<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=abcdefg&sensor=true_or_false"
    type="text/javascript"></script>
<script type="text/javascript">
    var map;
    var directions;

    function initialize() {
        if (GBrowserIsCompatible()) {
            map = new GMap2(document.getElementById("map_canvas"));
            map.setCenter(new GLatLng(37.4419, -122.1419), 13); //Mandatory part of map initialisation.

            map.setUIToDefault();
            //zoomTo();
        }
    }

    function showDirections(objTo, objFrom) {
        var _to, _from;
        _to = objTo.value;
        _from = objFrom.value;
        var _dirCommand = ('from: ' + _from + ' To: ' + _to);

        var pTo, pFrom;
        var directionsPanel = document.getElementById("directionsDiv");
        directions = new GDirections(directionsPanel);

        GEvent.addListener(directions,
                                "load",
                                function () {
                                    alert('Distance: ' + parseFloat(directions.getDistance().meters.toString()) / 1000 + ' km.');
                                }
                            );

        directions.load(('from: ' + _from + ' to: ' + _to));


    } //temp

    function onDirectionsLoaded() {

        alert(directions.getDistance().meters);
    }

    function getCoords(_address) {
        var geocoder = new GClientGeocoder();
        geocoder.getLatLng(
                _address,
                function (point) {
                    if (!point) {
                        alert(address + " not found");
                    } else {
                        return point;
                    }
                }
            );
    }
</script>
<table>
    <tr>
        <td>
            <div id="map_canvas" style="width: 600px; height: 400px">
            </div>
        </td>
        <td>
            <div>
                From:
                <asp:TextBox runat="server" ID="txtFrom" />
            </div>
            <div>
                To:
                <asp:TextBox runat="server" ID="txtTo" />
            </div>
            <p>
                <button onclick="showDirections(<%= txtTo.ClientID %>, <%= txtFrom.ClientID %>);return false;">
                    Get Directions</button></p>
        </td>
    </tr>
</table>
<div id="divToolstrip" style="float: right;">
    <span>Find Address:
        <input type="text" id="txtAddress" size="25" />
        <button onclick="showAddress();return false;">
            Show Address</button>
    </span>
    <asp:DropDownList runat="server" ID="ddlCities" />
    <button type="button" id="btnGo" onclick="goTo();">
        Go</button>
</div>
<div id="directionsDiv">
</div>
<script type="text/javascript">
    initialize();
</script>
<uc1:SourceViewer ID="SourceViewer1" runat="server" />
