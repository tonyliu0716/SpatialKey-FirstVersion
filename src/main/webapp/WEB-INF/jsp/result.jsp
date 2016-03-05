<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html >
<html lang="en" ng-app="minmax">
<head >
	<title >SpatialKey User Login</title >
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <link type="text/css" href="/static/ladda-themeless.min.css" rel="stylesheet">
	<link type="text/css" href="/static/main.css" rel="stylesheet" >
<script src="/static/jquery.js" ></script>
<script language="javascript" type="text/javascript">
	
</script>
</head >

<body >
<nav class="navbar navbar-inverse navbar-fixed-top" >
	<div class="container" >
		<div class="navbar-header" >
			<a class="navbar-brand">SpatialKey System</a >
		</div >
	</div >
</nav >
  
<div class="container main-content">

	<form novalidate="novalidate" method="post" action="/map">
		<div class="form-group" >
			<label for="name" class="control-label">Original Latitude</label >
			<input type="text"
			       class="form-control"
			       id="orgLatitude" 
			       name="orgLatitude"
			       value="${point.orgLatitude}"
                   required="required">
		</div >

		<div class="form-group">
			<label for="Longitude" class="control-label">Original Longitude</label >
			<input type="text"
			       class="form-control"
			       id="orgLongitude" 
                   name="orgLongitude"
                   value="${point.orgLongitude}"
                   required="required">
		</div >

		<div class="form-group">
			<label for="Longitude" class="control-label">Closest Point(Latitude)</label >
			<input type="text"
			       class="form-control"
			       id="latitude" 
                   name="latitude"
                   value="${point.latitude}"
                   required="required">
		</div >
		
		<div class="form-group">
			<label for="Longitude" class="control-label">Closest Point(Longitude)</label >
			<input type="text"
			       class="form-control"
			       id="longitude" 
                   name="longitude"
                   value="${point.longitude}"
                   required="required">
		</div >
		
		<div class="form-group">
			<label for="Longitude" class="control-label">TIV</label >
			<input type="text"
			       class="form-control"
			       id="TIV" 
                   name="TIV"
                   value="${point.TIV}"
                   required="required">
		</div >
		
		<div class="form-group">
			<label for="Longitude" class="control-label">Occupancy</label >
			<input type="text"
			       class="form-control"
			       id="occupancy" 
                   name="occupancy"
                   value="${point.occupancy}"
                   required="required">
		</div >
		
		<div class="form-group">
			<label for="Longitude" class="control-label">Year Build</label >
			<input type="text"
			       class="form-control"
			       id="year" 
                   name="year"
                   value="${point.year}"
                   required="required">
		</div >
		
		<div class="form-group">
			<label for="Longitude" class="control-label">Square footage</label >
			<input type="text"
			       class="form-control"
			       id="square" 
                   name="square"
                   value="${point.square}"
                   required="required">
		</div >
		
		<div class="form-group">
			<label for="Longitude" class="control-label">Number of stories</label >
			<input type="text"
			       class="form-control"
			       id="stories" 
                   name="stories"
                   value="${point.stories}"
                   required="required">
		</div >
		
		<div class="form-group">
			<label for="Longitude" class="control-label">Construction</label >
			<input type="text"
			       class="form-control"
			       id="construction" 
                   name="construction"
                   value="${point.construction}"
                   required="required">
		</div >
		
		<div class="form-group">
			<label for="Longitude" class="control-label">Distance</label >
			<input type="text"
			       class="form-control"
			       id="distance" 
                   name="distance"
                   value="${point.distance}"
                   required="required">
		</div >
		
		<div class="form-group">
			<label for="Longitude" class="control-label">Euclidean Distance</label >
			<input type="text"
			       class="form-control"
			       id="euclideanDistance" 
                   name="euclideanDistance"
                   value="${point.euclideanDistance}"
                   required="required">
		</div >
		
		<div class="form-group">
			<button class="btn btn-primary" 
                    type="submit"
                    ladda="submitting" 
                    data-style="expand-right"
                    >
                
                <span>Show it on a Map</span>
			</button>
		</div>
	</form >
</div >


<script src="/static/angular.min.js" ></script>
<script src="/static/jcs-auto-validate.js"></script>
<script src="/static/spin.min.js"></script>
<script src="/static/ladda.min.js"></script>
<script src="/static/angular-ladda.min.js"></script>
<script src="/static/main.js" ></script>


</body >
</html >
