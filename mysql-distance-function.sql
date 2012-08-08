DROP FUNCTION IF EXISTS GeoDistDiff;

DELIMITER |
CREATE FUNCTION GeoDistDiff( type ENUM('mi', 'km'), lat1 FLOAT, lon1 FLOAT, lat2 FLOAT, lon2 FLOAT ) RETURNS FLOAT
BEGIN
  RETURN ( IF(type = 'km', 6371, 3959) * acos( cos( radians(lat2) ) * cos( radians( lat1 ) ) * cos( radians( lon1 ) - radians(lon2) ) + sin( radians(lat2) ) * sin( radians( lat1 ) ) ) );
END;
|

DELIMITER ;
