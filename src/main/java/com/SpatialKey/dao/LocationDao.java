package com.SpatialKey.dao;

import java.util.List;
import com.SpatialKey.entity.ReturnPoint;

public interface LocationDao {
	public List<ReturnPoint> getAllPoints();
	public ReturnPoint findCloset(String latitude, String longitude);
}
