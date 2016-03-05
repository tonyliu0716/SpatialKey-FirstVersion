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
</head >

<body >
<nav class="navbar navbar-inverse navbar-fixed-top" >
	<div class="container" >
		<div class="navbar-header" >
			<a class="navbar-brand"
			   href="/" >SpatialKey User Login
			</a >
		</div >
	</div >
</nav >

<div class="container main-content" ng-controller="MinMaxCtrl">

	<form ng-submit="onSubmit()" novalidate="novalidate" action="/system" method="post">
		<div class="form-group" >
			<label for="name" class="control-label">Name</label >
			<input type="text"
			       class="form-control"
                   ng-model="formModel.name" 
			       id="name" 
                   required="required">
		</div >

		<div class="form-group">
			<label for="email" class="control-label">Email</label >
			<input type="email"
			       class="form-control"
                   ng-model="formModel.email" 
			       id="email" 
                   name="email"
                   required="required">
		</div >
        
       
        
		<div class="form-group" >
			<label for="username" class="control-label">Username</label >
			<input type="text"
			       class="form-control"
                   ng-model="formModel.username" 
			       id="username" 
                   
                   ng-pattern="/^[A-Za-z0-9_]{1,15}$/"
                   
                   ng-minlength="7"
                   
                   ng-pattern-err-type="badUsername"
                   
                   required="required">
		</div >

		<div class="form-group" >
			<label for="age" class="control-label">Age</label >
			<input type="number"
			       class="form-control"
                   ng-model="formModel.age"
                   min="18"
                   max="64"
			       id="age" 
                   ng-min-err-type="tooYoung"
                   ng-max-err-type="tooOld"
                   required="required">
		</div >

		<div class="form-group" >
			<label for="sex" class="control-label">Sex</label >
			<select name="sex"
			        id="sex"
                    ng-model="formModel.sex" 
                    required="required"
				    class="form-control" >
				<option value="" >Please Choose</option >
				<option value="male" >Male</option >
				<option value="female" >Female</option >
			</select >
		</div >

		<div class="form-group" >
			<label for="password" class="control-label">Password</label >
			<input type="password"
			       class="form-control"
                   ng-model="formModel.password" 
                   required="required"
                   ng-minlength="10"
			       id="password" >
		</div >

		<div class="form-group">
			<button class="btn btn-primary" 
                    type="submit"
                    ladda="submitting" 
                    data-style="expand-right"
                    >
                <span ng-show="submitting">Login...</span>
                <span ng-show="!submitting">Login</span>
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
