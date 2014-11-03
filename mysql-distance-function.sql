DROP FUNCTION IF EXISTS GeoDistDiff;

DELIMITER |
CREATE FUNCTION GeoDistDiff( type ENUM('mi', 'km'), lat1 DECIMAL(10,7), lon1 DECIMAL(10,7), lat2 DECIMAL(10,7), lon2 DECIMAL(10,7) ) RETURNS DECIMAL(10,7)
BEGIN
  RETURN ( IF(type = 'km', 6371, 3959) * acos( cos( radians(lat2) ) * cos( radians( lat1 ) ) * cos( radians( lon1 ) - radians(lon2) ) + sin( radians(lat2) ) * sin( radians( lat1 ) ) ) );
END;
|

DELIMITER ;
