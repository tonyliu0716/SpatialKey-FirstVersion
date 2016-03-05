<!DOCTYPE html>
<html>
  <head>
	<title>SpatialKey Location System</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/static/reset.css">
	<link rel="stylesheet" type="text/css" href="/static/style.css">

	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
 	<script src="https://maps.googleapis.com/maps/api/js?key="></script>
    <script type="text/javascript" src="/static/map.js"></script>
    
  </head>
  <body>
  
	<div id="control">
		<h2>SpatialKey</h2>
		<p>SpatialKey Service</p>
		
		<form method="post" action="/return">
		<br/>
			Latitude: <p id="latitude">${point.latitude}</p>
			Longitude: <p id="longitude">${point.longitude}</p>
			TIV: <p id="TIV">${point.TIV}</p>
			Occupancy: <p id="occupancy">${point.occupancy}</p>
			Year build:<p id="year">${point.year}</p>
			Square footage:<p id="square">${point.square}</p>
			Number of Stories:<p id="stories">${point.stories}</p>
			Construction:<p id="construction">${point.construction}</p>
			<br/>
			<button class="learnButton" type="submit">Return & Search again!</button>
		</form>
	</div>
	
	<!-- an empty div for the map -->
	<div id="map-canvas"></div>


  </body>
</html>