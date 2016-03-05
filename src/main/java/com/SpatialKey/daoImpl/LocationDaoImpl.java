package com.SpatialKey.daoImpl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.SpatialKey.dao.LocationDao;
import com.SpatialKey.entity.ReturnPoint;
import com.SpatialKey.util.GetDistance;
import com.SpatialKey.util.ReadPoints;




@Service
public class LocationDaoImpl implements LocationDao{
	
	public static final String CACHE = "PointCache";
	public static final String DefaultKey = "FIND_ALL";
	
	
	
	@Cacheable(value = CACHE, key= "#root.target.DefaultKey")
	public List<ReturnPoint> getAllPoints() {
		List<ReturnPoint> points = null;
		try {
			points = ReadPoints.read();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return points;
	}
	
	@Cacheable(value = CACHE, key= "{#latitude.toString(), #longitude.toString()}")
	public ReturnPoint findCloset(String latitude, String longitude) {
		
		List<ReturnPoint> points = null;
		try {
			points = ReadPoints.read();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		double min = 0;
		double change = 0;
		int index = 0;
		
		double orgLatitude = Double.parseDouble(latitude);
		double orgLongitude = Double.parseDouble(longitude);
		
		double renLatitude = 0;
		double renLongitude = 0;
		for(int i = 0; i < points.size(); i++) {
			change = min;
			double latitude1 = Double.parseDouble( points.get(i).getLatitude() );
			double longitude1 = Double.parseDouble( points.get(i).getLongitude() );
			min = GetDistance.getEuclideanDistance(orgLongitude, orgLatitude, longitude1, latitude1);
			if(min > change) {
				min = change;
				index = i;
				renLatitude = latitude1;
				renLongitude = longitude1;
			}
		}
		double distance = GetDistance.getDistance(orgLongitude, orgLatitude, renLongitude, renLatitude);
		double euclidean = GetDistance.getEuclideanDistance(renLongitude, renLatitude, orgLongitude, orgLatitude);
		ReturnPoint p = points.get(index);
		p.setOrgLatitude(latitude);
		p.setOrgLongitude(longitude);
		p.setDistance(distance);
		p.setEuclideanDistance(euclidean);
		return p;
	}

	
	
	

}
