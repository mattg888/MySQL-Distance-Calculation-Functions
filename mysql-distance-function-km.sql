DROP FUNCTION IF EXISTS GeoDistDiff_KM;

DELIMITER |
CREATE FUNCTION GeoDistDiff_KM( lat1 FLOAT, lon1 FLOAT, lat2 FLOAT, lon2 FLOAT ) RETURNS FLOAT
BEGIN
  RETURN ( 6371 * acos( cos( radians(lat2) ) * cos( radians( lat1 ) ) * cos( radians( lon1 ) - radians(lon2) ) + sin( radians(lat2) ) * sin( radians( lat1 ) ) ) );
END;
|

DELIMITER;
