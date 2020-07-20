<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maps</title>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>

    <script type="text/javascript">
        
        function updateMarkerPosition(latLng) {
            document.getElementById('lat').value = latLng.lat();
            document.getElementById('lng').value = latLng.lng();
        }

        
        function initialize() {
            var latLng = new google.maps.LatLng(37.983810, 23.727539);
            var map = new google.maps.Map(document.getElementById('mapCanvas'), {
                zoom: 11,
                center: latLng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
            var marker = new google.maps.Marker({
                position: latLng,
                title: 'Point A',
                map: map,
                draggable: true
            });

            // Update current position info.
            updateMarkerPosition(latLng);
            
            google.maps.event.addListener(marker, 'drag', function () {
                updateMarkerPosition(marker.getPosition());
            });

        }

        // Onload handler to fire off the app.
        google.maps.event.addDomListener(window, 'load', initialize);
</script>

<style>
  #mapCanvas {
    width: 600px;
    height: 600px;
    float: left;
  }
  #infoPanel {
    float: left;
    margin-left: 20px;
  }
  #infoPanel div {
    margin-bottom: 5px;
  }
  </style>

  </head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <div id="mapCanvas"></div>
            <div id="infoPanel">
                <b>Current position:</b>
                <br />
                <br />
                <b>Lat : </b> <input id="lat" runat="server" type="text" />
                <br />
                <b>Long : </b> <input id="lng" runat="server" type="text" />&nbsp;&nbsp;&nbsp;<br />
                <br />
                <br />
                &nbsp;
                <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" 
            onclick="Button1_Click" BackColor="White" Font-Size="Large" Height="40px" 
                    Width="100px" />
                <br />
                <br />

            </div>
            <br />
        <br />
            <br />
        <br />
        </div>
    </form>
</body>
</html>
