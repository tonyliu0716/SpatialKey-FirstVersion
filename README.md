# SpatialKey Server Coding Test

This repository is a vanilla Maven Spring Boot project. You can ensure that your environment is properly configured by 
running the main method in com.spatialkey.MainController. Once the server has started, you can point your browser to 
[http://localhost:8080](http://localhost:8080) to view the output.

The "src/main/resources/locations.csv" file contains the locations described in the assignments requirements.

Happy coding!


Here are some steps:
(1) http://localhost:8080 --> return a String "Welcome to SpatialKey" 

(2) http://localhost:8080/index --> return user login page 

(3) after login successfully, redirect to --> http://localhost:8080/system

(4) user input latitude and longitude, click "Load" button

(5) send to http://localhost:8080/getLocation/{latitude}/{longitude}, and show the details of the point

(6) at the end of the page, click "Show it on a Map" button

(7) Show all the details on Google map

(8) click the point which showed on the map, it will show the details