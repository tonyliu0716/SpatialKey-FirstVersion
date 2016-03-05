$(function() {
	doMap();
});

function doMap() {
	var latitude = $("#latitude").html();
	var longitude = $("#longitude").html();
	if(latitude === "" && longitude === "") {
		latitude = "37.09024";
		longitude = "-100.712891";
	}
	
	var myLatlng = new google.maps.LatLng(latitude, longitude);
	
	// map options
	var mapOptions = {
		zoom : 5,
		center : myLatlng,
		panControl : false,
		panControlOptions : {
			position : google.maps.ControlPosition.BOTTOM_LEFT
		},
		zoomControl : true,
		zoomControlOptions : {
			style : google.maps.ZoomControlStyle.LARGE,
			position : google.maps.ControlPosition.RIGHT_CENTER
		},
		scaleControl : false

	};
	
	var information = "Details - (latitude:" + $("#latitude").html() +", longitude:" + $("#longitude").html() + ")";
	
	// Adding infowindow option
	infowindow = new google.maps.InfoWindow({
		content : information
	});
	
	
	
	// Fire up Google maps and place inside the map-canvas div
	map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
	
	var marker = new google.maps.Marker({
		position: myLatlng,
		title: "Hello World!"
	});
	marker.setMap(map);
	
	//listener for infowindow
	google.maps.event.addListener(marker, 'click', function() {
		infowindow.open(map, marker);
	});
}

