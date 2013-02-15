<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GoogleDemo1.ascx.cs" Inherits="transparent.controls.googlemaps.GoogleDemo1" %>
<%@ Register src="../../include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc1" %>
<script src="http://maps.google.com/maps?file=api&v=2&sensor=true&key=ABQIAAAAA4TTpUmB6gEohQqordFkMxQfoL0LbMsoTwxlH9_tpioAPoSoCBSi_KO0-wDv9FAp1_rUnsSywGPahg"
    type="text/javascript"></script>
<script type="text/javascript">
    var map;

    function initialize() {
        if (GBrowserIsCompatible()) {
            map = new GMap2(document.getElementById("map_canvas"));
            map.setCenter(new GLatLng(37.4419, -122.1419), 13); //Mandatory part of map initialisation.

            map.setUIToDefault();
            zoomTo();
        }
    }
    function zoomTo() {
        var _zoomselect = document.getElementById('<%= ddlZoom.ClientID %>');
        //alert(_zoomselect.selectedIndex);
        map.setZoom(parseInt(_zoomselect.options[_zoomselect.selectedIndex].value));
        //alert(_zoomselect.options[_zoomselect.selectedIndex].value);
    }

    function goTo() {
        var _select = document.getElementById('<%= ddlCities.ClientID %>');
        var x; var y;

        var arrcoords = _select.options[_select.selectedIndex].value.split(',');
        x = arrcoords[0];
        y = arrcoords[1]

        map.panTo(new GLatLng(x, y));
    }

    function toggleDrag(obj) {
        if (obj.checked) {
            map.enableDragging();
        }
        else {
            map.disableDragging();
        }
    }



    function showAddress() {
        var geocoder = new GClientGeocoder();
        var address = document.getElementById('txtAddress').value
        geocoder.getLatLng(
                address,
                function (point) {
                    if (!point) {
                        alert(address + " not found");
                    } else {
                        alert('got ' + point);
                        map.setCenter(point, 13);
                        var marker = new GMarker(point);
                        map.addOverlay(marker);
                        marker.openInfoWindowHtml(address);
                    }
                }
              );
    }

    function setMapType(obj) {
        alert('Sorry. This function is off-line for essential maintenance.');
        return;
        //alert('maptype = ' + obj.options[obj.selectedIndex].value);
        /*
        G_NORMAL_MAP displays the default road map view.
        G_SATELLITE_MAP displays Google Earth satellite images. *
        G_HYBRID_MAP displays a mixture of normal and satellite views.*
        G_DEFAULT_MAP_TYPES contains an array of the above three types, useful for iterative processing.
        G_PHYSICAL_MAP displays 
        */
        var _mapType = obj.options[obj.selectedIndex].value;
        switch (_mapType) {
            case "G_NORMAL_MAP":
                map.setType(G_NORMAL_MAP);
                break;
            case "G_SATELLITE_MAP":
                map.setType(G_SATELLITE_MAP);
                break;
            case "G_HYBRID_MAP":
                map.setType(G_SATELLITE_MAP);
                break;
            case "G_PHYSICAL_MAP":
                map.setType(G_PHYSICAL_MAP);
                break;
        }
    }
</script>
<table>
    <tr>
        <td>
            <div id="map_canvas" style="width: 600px; height: 400px">
            </div>
        </td>
        <td>
            <span>Draggable:
                <input type="checkbox" id="chbxEnableDrag" checked onclick="toggleDrag(this);" />
            </span>
            <div>
                <asp:DropDownList runat="server" ID="ddlMapType" />
            </div>
            <div>
                <asp:DropDownList runat="server" ID="ddlZoom" />
                <button type="button" class="btn" onclick="zoomTo();">
                    Zoom</button>
            </div>
        </td>
    </tr>
</table>
<div id="divToolstrip" style="float: right;">
    <span>Show Address:
        <input type="text" id="txtAddress" size="25" />
        <button  onclick="showAddress();return false;" class="btn" >
            Show Address</button>
    </span>
    <asp:DropDownList runat="server" ID="ddlCities" />
    <button type="button" class="btn" id="btnGo" onclick="goTo();">
        Go</button>
</div>
<script type="text/javascript">
    initialize();
</script>

<uc1:SourceViewer ID="SourceViewer1" runat="server" />
