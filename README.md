# License

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

MySQL-distance-functions
==========================

A MySQL function to find the distance in KM or Miles between two latitudes and longitudes

Example usage:
--------------
```sql
SELECT 
	GeoDistDiff('km', 50.459634, -3.526109, 50.459408, -3.524457) as distance_km,
	GeoDistDiff('mi', 50.459634, -3.526109, 50.459408, -3.524457) as distance_mi;
```

Example output:
---------------
```
+---------------------+---------------------+
| distance_km         | distance_mi         |
+---------------------+---------------------+
| 0.11959195137023926 | 0.07431557774543762 |
+---------------------+---------------------+
1 row in set (0.00 sec)
```