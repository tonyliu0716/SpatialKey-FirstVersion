package com.SpatialKey.util;

public class GetDistance {
	private static final double EARTH_RADIUS = 6378137;
	private static double rad(double d) {  
       return d * Math.PI / 180.0;  
    } 
	
	public static double getDistance(double lng1, double lat1, double lng2, double lat2) {
		double radLat1 = rad(lat1);  
		double radLat2 = rad(lat2);  
		double a = radLat1 - radLat2;  
		double b = rad(lng1) - rad(lng2);  
		double s = 2 * Math.asin(Math.sqrt(Math.pow(Math.sin(a/2),2) +   
         Math.cos(radLat1)*Math.cos(radLat2)*Math.pow(Math.sin(b/2),2)));  
        s = s * EARTH_RADIUS;  
        s = Math.round(s * 10000) / 10000;  
        return s;  
	}
	
	//I am not sure about this method
	public static double getEuclideanDistance(double lng1, double lat1, double lng2, double lat2) {
		double distance = 0;
		double doubleResultY = Math.abs(lat1 - lat2);
		double doubleResultX = Math.abs(lng1 - lng2);
		distance = Math.sqrt(doubleResultY*doubleResultX +doubleResultX*doubleResultX);
		return distance;
	}
}
