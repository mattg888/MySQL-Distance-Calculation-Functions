DROP FUNCTION IF EXISTS GeoDistDiff_Miles;

DELIMITER |
CREATE FUNCTION GeoDistDiff_Miles( lat1 FLOAT, lon1 FLOAT, lat2 FLOAT, lon2 FLOAT ) RETURNS FLOAT
BEGIN
  RETURN ( 3959 * acos( cos( radians(lat2) ) * cos( radians( lat1 ) ) * cos( radians( lon1 ) - radians(lon2) ) + sin( radians(lat2) ) * sin( radians( lat1 ) ) ) );
END;
|

DELIMITER ;

