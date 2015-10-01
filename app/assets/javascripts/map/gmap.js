var sf_lat = 37.683;
var sf_lng = -122.416;
var london_lat = 51.507;
var london_lng = -0.1275;
var gib_lat = 36.143;
var gib_lng = -5.353;

$(document).ready(function(){
	ourMap = createMap();
	sfMarker = createMarker(sf_lat, sf_lng, ourMap, "San Francisco");
	londonMarker = createMarker(london_lat, london_lng, ourMap, "London");
	gibMarker = createMarker(gib_lat, gib_lng, ourMap, "Gibralter");

});

function createMap()
{
	map = new google.maps.Map(document.getElementById('map-canvas'),
	{
		center: {lat: 48.9271, lng: -36.263},
		zoom: 3
	});

	return map;
}

function createMarker(lat, lng, map, title)
{
	marker = new google.maps.Marker({
		position: new google.maps.LatLng(lat,lng),
		map: map,
		title: title
	});

	// marker.addEventListener('click', function(){
	// 	alert("You clicked on " + title + " !");
	// });

	return marker;
}