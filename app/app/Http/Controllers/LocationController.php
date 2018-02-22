<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use \Illuminate\Http\Request;

use DB;

class LocationController extends BaseController
{
    /**
     * Find the closest location based on provided Latitude/Longitude values
     * @param  Decimal $latitude
     * @param  Decimal $longitude
     * @return JSON Location object
     */
    public function findOneLocation($latitude, $longitude)
    {
        $locations = DB::select("CALL haversine_limit({$latitude}, {$longitude}, 1)");

        return response()->json($locations[0]);
    }

    /**
     * Find all locations ordered by distance to provided Latitude/Longitude values
     * @param  Decimal $latitude
     * @param  Decimal $longitude
     * @return Array JSON location objects
     */
    public function findAllLocations($latitude, $longitude)
    {
        $locations = DB::select("CALL haversine({$latitude}, {$longitude})");

        return response()->json($locations);
    }
}
