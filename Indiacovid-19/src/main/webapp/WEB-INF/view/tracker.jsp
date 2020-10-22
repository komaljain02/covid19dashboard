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
	<div class="container" >
		<div class="box-1" >
			<div class="design1" ><h1>Covid-19</h1></div>
			<div class="design2" ><a href="/">Home</a></div>
			<div class="design3" ><a href="#">Resources</a></div>
		</div>
		<div class="box-2" >
			<div class="div1 c3" ><div>Confirmed</div><span class="size1">[+${total.deltaconfirmed}]</span>${total.confirmed}</div>
			<div class="div2 c3" ><div>Active</div><div class="c4">${total.active}</div></div>
			<div class="div3 c3" ><div>Recovered</div><span class="size1">[+${total.deltarecovered}]</span>${total.recovered}</div>
			<div class="div4 c3" ><div>Deceased</div><span class="size1">[+${total.deltadeaths}]</span>${total.deaths}</div>
		</div>
		<div class="box-3" id="map" ></div>
		<div class="box-4" ><h2 class="c5" >state-wise covid-19 cases</h2></div>
		<div class="box-5" >
			<div class="indesign">
				<div class="sec1 sec3">states/union-territory</div>
				<div class="sec2 sec3">confirmed</div>
				<div class="sec2 sec3">active</div>
				<div class="sec2 sec3">recovered</div>
				<div class="sec2 sec3">deceased</div>
			</div>
		<c:forEach var="k" items="${liststate}">
			<div class="s1">
				<div class="indesign colorx" >
					<div class="sec1 sec3" name="${k.key}" ><span onclick="slidingoptions('${k.value.statecode}')" > &#10095 </span>${k.key}</div>
					<div class="sec2 sec3" name="${k.key}" ><span class="size2" >(+${k.value.deltaconfirmed})</span>${k.value.confirmed}</div>
					<div class="sec2 sec3" name="${k.key}" >${k.value.active}</div>
					<div class="sec2 sec3" name="${k.key}" ><span class="size2" >(+${k.value.deltarecovered})</span>${k.value.recovered}</div>
					<div class="sec2 sec3" name="${k.key}" ><span class="size2" >(+${k.value.deltadeaths})</span>${k.value.deaths}</div>
				</div>
			<div class="s3" id="${k.value.statecode}">
				<c:forEach var="h" items="${k.value.district}">
				<c:set var="r" value="${h.value.delta}" />
					<div class="s2">
						<div class="sec1 sec3">${h.key}</div>
						<div class="sec2 sec3"><span class="size2" >(+${r.confirmed})</span>${h.value.confirmed}</div>
						<div class="sec2 sec3">${h.value.active}</div>
						<div class="sec2 sec3"><span class="size2" >(+${r.recovered})</span>${h.value.recovered}</div>
						<div class="sec2 sec3"><span class="size2" >(+${r.deceased})</span>${h.value.deceased}</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</c:forEach>
	</div>
	</div>
	<script src="https://apis.mapmyindia.com/advancedmaps/v1/qgak6kuzfka7aa78jf93omueqlz7tzev/map_load?v=1.3"></script>
	<script src="https://code.jquery.com/jquery-3.5.0.js" integrity="sha256-r/AaFHrszJtwpe+tHyNi/XCfMxYpbsRg2Uqn0x3s2zc=" crossorigin="anonymous"></script>
	<script src="js/minjs.js" ></script>
</body>
</html>
