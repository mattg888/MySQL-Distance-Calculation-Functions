MySQL-distance-functions
==========================

A MySQL function to find the distance in KM or Miles between two latitude and longitude

Example usage:
```sql
SELECT 
	GeoDistDiff_KM(50.459634, -3.526109, 50.459408, -3.524457) as km_distance,
	GeoDistDiff_KM(50.459634, -3.526109, 50.459408, -3.524457) as miles_distance;
```
