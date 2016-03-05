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
	
	function doSubmit() {
		var latitude = $("#latitude").val();
		var longitude = $("#longitude").val();
		window.location="getLocation/" + latitude + "/" + longitude;
	}
</script>
</head >

<body >
<nav class="navbar navbar-inverse navbar-fixed-top" >
	<div class="container" >
		<div class="navbar-header" >
			<a class="navbar-brand"
			   >SpatialKey System
			</a >
		</div >
	</div >
</nav >
  
<div class="container main-content">

	<form onsubmit="doSubmit()" novalidate="novalidate" method="get">
		<div class="form-group" >
			<label for="name" class="control-label">Latitude</label >
			<input type="text"
			       class="form-control"
			       id="latitude" 
			       name="latitude"
			       placeholder="for example: 37.09024"
                   required="required">
		</div >

		<div class="form-group">
			<label for="Longitude" class="control-label">Longitude</label >
			<input type="text"
			       class="form-control"
			       id="longitude" 
                   name="longitude"
                   placeholder="for example: -100.712891"
                   required="required">
		</div >

		<div class="form-group">
			<button class="btn btn-primary" 
                    type="submit"
                    ladda="submitting" 
                    data-style="expand-right"
                    >
                
                <span>Load</span>
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
