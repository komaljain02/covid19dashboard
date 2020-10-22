<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1.0">

<title>covid-19 India Tracker</title>
<link rel="stylesheet" href="css/style.css" >
</head>
<body>
<p>total:- ${total.confirmed}</p>
<p>recovered:- ${total.deaths}</p>
<p>death:- ${total.recovered}</p>

<div id="map">
	<c:forEach var="x" items="${liststate}" >
		<div id="${x.key}" class="c1">
		<div>${x.key}</div>
		<div>confirmed:- ${x.value.confirmed}</div>
		<div>deaths:- ${x.value.deaths}</div>
		<div>recovered:- ${x.value.recovered}</div>
		</div>
			<c:forEach var="y" items="${x.value.district}" >
				<div class="c1">${y.key}</div>
				<div class="c1">${y.value.confirmed}</div>
			</c:forEach>
	</c:forEach>
</div>
<script src="https://apis.mapmyindia.com/advancedmaps/v1/qgak6kuzfka7aa78jf93omueqlz7tzev/map_load?v=1.3"></script>
<script>
var state=["Kerala","Rajasthan","Goa","Maharashtra","Jammu and Kashmir","Karnataka","Madhya Pradesh","Gujarat","Uttar Pradesh","Bihar","Haryana","Tamil Nadu","Telangana","Punjab","Andhra Pradesh"
,"Chandigarh","Odisha","Jharkhand","Assam","West Bengal","Nagaland","Himachal Pradesh","Sikkim","Manipur","Arunachal Pradesh","Tripura","Meghalaya","Mizoram","Ladakh","Andaman and Nicobar Islands","Puducherry","Dadra and Nagar Haveli","Daman and Diu","Lakshadweep"];
var latlong = [[10.8505,76.2711],[27.0238,74.2179],[15.2993, 74.1240 ],[19.7515 , 75.7139 ],[33.7782 , 76.5762 ],[15.3173 , 75.7139 ],[22.9734 , 78.6569 ],[22.2587 , 71.1924 ],[26.8467 , 80.9462 ],[25.0961 , 85.3131 ],[29.0588 , 76.0856 ],[11.1271 , 78.6569 ],[18.1124, 79.0193],[31.1471, 75.3412],[15.9129, 79.7400],[30.7333, 76.7794],[20.9517, 85.0985],[23.6102, 85.2799],[26.2006, 92.9376],[22.9868, 87.8550],[26.1584, 94.5624],[31.1048, 77.1734],[27.5330, 88.5122],[24.6637, 93.9063]
,[28.2180, 94.7278],[23.9408, 91.9882],[25.4670, 91.3662 ],[23.1645, 92.9376 ],[34.2996, 78.2932],[11.7401, 92.6586],[11.9416, 79.8083],[20.1809, 73.0169]
,[20.4283, 72.8397],[10.56257331,72.63686717]];

var map=new MapmyIndia.Map("map",{center:[15.3173 , 75.7139],zoomControl: true,hybrid:true});
map.setZoom(6);
for(var i=0;i<state.length;i++)
{
      L.marker(latlong[i]).addTo(map).bindPopup(document.getElementById(state[i]).innerHTML);
}
</script>
</body>
</html>