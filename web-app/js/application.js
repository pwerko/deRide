$(document).ready(function() {
	var startField = document.getElementById('simple_search_start');
	var endField = document.getElementById('simple_search_destination');
	var options = {
	  types: ['(cities)'],
	  componentRestrictions: {country: 'mx'}
	};

	autocompleteStart = new google.maps.places.Autocomplete(startField, options);
	autocompleteEnd = new google.maps.places.Autocomplete(endField, options);

	$('#simple_search_start').change(function(e) {
		$('#simple_search_start').addClass('complete-radius').removeClass('upper-radius');
	});

	$('#simple_search_destination').change(function(e) {
		$('#simple_search_destination').addClass('complete-radius').removeClass('upper-radius');
	});

	$('#simple_search_start').keypress(function(e) {
		if (e.which == 13) {
			$('#simple_search_start').addClass('complete-radius').removeClass('upper-radius');
	  		e.preventDefault();
	    	google.maps.event.trigger(autocompleteStart, 'place_changed');
	    	return false;
	  	} else {
	  		$('#simple_search_start').addClass('upper-radius').removeClass('complete-radius');
	  	}
	});

	$('#simple_search_destination').keypress(function(e) {
	  	if (e.which == 13) {
	  		$('#simple_search_destination').addClass('complete-radius').removeClass('upper-radius');
	  		e.preventDefault();
	    	google.maps.event.trigger(autocompleteEnd, 'place_changed');
	    	return false;
	  	} else {
	  		$('#simple_search_destination').addClass('upper-radius').removeClass('complete-radius');
	  	}
	});

	google.maps.event.addListener(autocompleteStart, 'place_changed', function() {
		var place = autocompleteStart.getPlace();
		if (!place || !place.geometry) {
		    return;
		}
		console.log(place.geometry.viewport);
		console.log(place.geometry.location);
		// If the place has a geometry, then present it on a map.
		/*if (place.geometry.viewport) {
		    // Use the viewport if it is provided.
		    map.fitBounds(place.geometry.viewport);
		} else {
		    // Otherwise use the location and set a chosen zoom level.
			map.setCenter(place.geometry.location);
		    map.setZoom(17);
		}
		var image = {
		    url: place.icon,
		    size: new google.maps.Size(71, 71),
		    origin: new google.maps.Point(0, 0),
		    anchor: new google.maps.Point(17, 34),
		    scaledSize: new google.maps.Size(25, 25)
		};
		marker.setIcon(image);
		marker.setPosition(place.geometry.location);

		infowindow.setContent(place.name);
		infowindow.open(map, marker);*/
	});

	google.maps.event.addListener(autocompleteEnd, 'place_changed', function() {
		var place = autocompleteEnd.getPlace();
		if (!place || !place.geometry) {
		    return;
		}
		console.log(place.geometry.viewport);
		console.log(place.geometry.location);
	});
});
